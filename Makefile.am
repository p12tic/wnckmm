## Copyright (c) 2013 Povilas Kanapickas  <povilas@radix.lt>
##
## This file is part of wnckmm.
##
## This library is free software; you can redistribute it and/or
## modify it under the terms of the GNU Lesser General Public
## License as published by the Free Software Foundation; either
## version 2.1 of the License, or (at your option) any later version.
##
## This library is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## Lesser General Public License for more details.
##
## You should have received a copy of the GNU Lesser General Public License
## along with this library.  If not, see <http://www.gnu.org/licenses/>.

ACLOCAL_AMFLAGS = -I m4 ${ACLOCAL_FLAGS}
DISTCHECK_CONFIGURE_FLAGS = --enable-warnings=fatal

if MAINTAINER_MODE
src_subdirs = tools wnck/src
else
src_subdirs =
endif
if ENABLE_DOCUMENTATION
doc_subdirs = doc
else
doc_subdirs =
endif
SUBDIRS = $(src_subdirs) wnck/wnckmm $(doc_subdirs)

wnckmm_includedir = $(includedir)/$(WNCKMM_MODULE_NAME)
wnckmm_include_HEADERS = wnck/wnckmm.h
wnckmm_libincludedir = $(libdir)/$(WNCKMM_MODULE_NAME)/include

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = wnck/$(WNCKMM_MODULE_NAME).pc

text_files = README.md

dist_noinst_DATA = $(text_files)
dist_noinst_SCRIPTS = autogen.sh
