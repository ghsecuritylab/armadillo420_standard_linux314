/*
 * $Id: fix_lumps.h,v 1.3 2003/01/21 13:53:48 jiri Exp $
 *
 * here, we delete message lumps which are generated in
 * core functions using pkg_malloc and applied to shmem
 * requests; not doing so would result ugly memory problems
 *
 * I admit it is not a nice hack; -jiri 
 *
 * Copyright (C) 2001-2003 Fhg Fokus
 *
 * This file is part of ser, a free SIP server.
 *
 * ser is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version
 *
 * For a license to use the ser software under conditions
 * other than those described here, or to purchase support for this
 * software, please contact iptel.org by e-mail at the following addresses:
 *    info@iptel.org
 *
 * ser is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License 
 * along with this program; if not, write to the Free Software 
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */


#ifndef _FIX_LUMPS_H
#define _FIX_LUMPS_H

#include "defs.h"


/* used to delete attached via lumps from msg; msg can
   be either an original pkg msg, whose Via lump I want
   to delete before generating next branch, or a shmem-stored
   message processed during on_reply -- then I want to
   delete the Via lump for the same reason

   the other case when I want to delete them is when a message
   is stored in shmem for branch picking, forwarded lated and
   Via removal is applied to the shmem-ed message
*/
inline static void free_via_lump( struct lump **list )
{
	struct lump *prev_lump, *lump, *a, *foo;

	prev_lump=0;
	for(lump=*list;lump;lump=lump->next) {
		if (lump->type==HDR_VIA) {
			a=lump->before;
			while(a) {
				foo=a; a=a->before;
				free_lump(foo);
				pkg_free(foo);
			}
			a=lump->after;
			while(a) {
				foo=a; a=a->after;
				free_lump(foo);
				pkg_free(foo);
			}
			if (prev_lump) prev_lump->next = lump->next;
			else *list = lump->next;
			free_lump(lump);pkg_free(lump);
		} else {
			/* store previous position */
			prev_lump=lump;
		}
	}
}

#endif
