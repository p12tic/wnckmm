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

lib_LTLIBRARIES = libwnckmm-@WNCKMM_API_VERSION@.la

include $(srcdir)/../src/filelist.am
include $(srcdir)/filelist.am

files_built_cc = $(wnckmm_files_built_cc)
files_built_h  = $(wnckmm_files_built_h)
files_built_ph = $(wnckmm_files_built_ph)
files_extra_cc = $(wnckmm_files_extra_cc)
files_extra_h  = $(wnckmm_files_extra_h)
files_extra_ph = $(wnckmm_files_extra_ph)

include $(top_srcdir)/m4/compile-binding.am

local_cppflags = $(binding_includes) $(binding_cppflags)

AM_CPPFLAGS = $(local_cppflags) $(GTHREAD_CFLAGS) $(WNCKMM_CFLAGS)
AM_CXXFLAGS = $(WNCKMM_WXXFLAGS)

libwnckmm_@WNCKMM_API_VERSION@_la_SOURCES = $(binding_sources)
libwnckmm_@WNCKMM_API_VERSION@_la_LDFLAGS = -no-undefined -version-info $(LIBWNCKMM_SO_VERSION)
libwnckmm_@WNCKMM_API_VERSION@_la_LIBADD  = $(WNCKMM_LIBS)
