/* Copyright (C) 1991, 1995, 1996, 2000 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, write to the Free
   Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
   02111-1307 USA.  */

#include <errno.h>
#include <signal.h>

int
__sigpause (sig_or_mask, is_sig)
     int sig_or_mask;
     int is_sig;
{
  __set_errno (ENOSYS);
  return -1;
}
stub_warning (__sigpause)


int
__default_sigpause (int mask)
{
  __set_errno (ENOSYS);
  return -1;
}
weak_alias (__default_sigpause, sigpause)
stub_warning (sigpause)
#include <stub-tag.h>


int
__xpg_sigpause (int sig)
{
  __set_errno (ENOSYS);
  return -1;
}