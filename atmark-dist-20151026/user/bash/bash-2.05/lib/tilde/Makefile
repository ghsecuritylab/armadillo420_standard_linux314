# Generated automatically from Makefile.in by configure.
## -*- text -*- ####################################################
#								   #
# Makefile for the GNU Tilde Library.				   #
#								   #
####################################################################

# Copyright (C) 1996 Free Software Foundation, Inc.     

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111 USA.

srcdir = .
VPATH = .:.
topdir = ../..
BUILD_DIR = $(ROOTDIR)/user/bash/bash-2.05

INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644

#CC = 
#RANLIB = 
#AR = 
ARFLAGS = cr
RM = rm
CP = cp
MV = mv

SHELL = /bin/sh

CFLAGS +=  -I$(topdir)/lib/termcap
LOCAL_CFLAGS = 
#CPPFLAGS = 
LDFLAGS +=  -L./lib/termcap -rdynamic

DEFS = -DHAVE_CONFIG_H
LOCAL_DEFS = -DSHELL

BASHINCDIR = ${topdir}/include

INCLUDES = -I. -I../.. -I$(topdir) -I${BASHINCDIR} -I$(topdir)/lib

CCFLAGS = $(DEFS) $(LOCAL_DEFS) $(CPPFLAGS) ${INCLUDES} $(LOCAL_CFLAGS) $(CFLAGS)

.c.o:
	$(CC) -c $(CCFLAGS) $<

# The name of the library target.
LIBRARY_NAME = libtilde.a

# The C code source files for this library.
CSOURCES = $(srcdir)/tilde.c

# The header files for this library.
HSOURCES = $(srcdir)/tilde.h

OBJECTS = tilde.o

# The texinfo files which document this library.
DOCSOURCE = doc/tilde.texi
DOCOBJECT = doc/tilde.dvi
DOCSUPPORT = doc/Makefile
DOCUMENTATION = $(DOCSOURCE) $(DOCOBJECT) $(DOCSUPPORT)

SUPPORT = Makefile ChangeLog $(DOCSUPPORT)

SOURCES  = $(CSOURCES) $(HSOURCES) $(DOCSOURCE)

THINGS_TO_TAR = $(SOURCES) $(SUPPORT)

######################################################################

all: $(LIBRARY_NAME)

$(LIBRARY_NAME): $(OBJECTS)
	$(RM) -f $@
	$(AR) $(ARFLAGS) $@ $(OBJECTS)
	-test -n "$(RANLIB)" && $(RANLIB) $@

documentation: force
	-(cd doc; $(MAKE) $(MFLAGS))

force:

# The rule for 'includes' is written funny so that the if statement
# always returns TRUE unless there really was an error installing the
# include files.
install:
	$(INSTALL_DATA) -c -m 644 $(LIBRARY_NAME) $(bindir)/$(LIBRARY_NAME)
	-test -n "$(RANLIB)" && $(RANLIB) -t $(bindir)/$(LIBRARY_NAME)

clean:
	$(RM) -f $(OBJECTS) $(LIBRARY_NAME)
	-( cd doc && $(MAKE) $(MFLAGS) $@ )

realclean distclean maintainer-clean: clean
	-( cd doc && $(MAKE) $(MFLAGS) $@ )
	$(RM) -f Makefile

mostlyclean: clean
	-( cd doc && $(MAKE) $(MFLAGS) $@ )

######################################################################
#								     #
#  Dependencies for the object files which make up this library.     #
#								     #
######################################################################

tilde.o: tilde.h $(BASHINCDIR)/ansi_stdlib.h
tilde.o: $(BUILD_DIR)/config.h

# Rules for deficient makes, like SunOS and Solaris
tilde.o: tilde.c
