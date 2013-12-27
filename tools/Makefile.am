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

AUTOMAKE_OPTIONS = subdir-objects

include $(srcdir)/m4/filelist.am

gmmproc_m4_includedir = $(libdir)/$(WNCKMM_MODULE_NAME)/proc/m4
dist_gmmproc_m4_include_DATA = $(addprefix m4/,$(files_codegen_m4))

noinst_PROGRAMS = extra_defs_gen/generate_defs_wnck

extra_defs_gen_generate_defs_wnck_SOURCES = extra_defs_gen/generate_defs_wnck.cc
extra_defs_gen_generate_defs_wnck_LDADD   = $(WNCKMM_LIBS) -lglibmm_generate_extra_defs-2.4
extra_defs_gen_generate_defs_wnck_LDFLAGS = -no-undefined -avoid-version

AM_CPPFLAGS = -I$(top_builddir) $(WNCKMM_CFLAGS)
AM_CXXFLAGS = $(WNCKMM_CXXFLAGS)

# Instruct GNU make to delete the targets of a rule after it failed, in
# order to avoid the complication of handling that situation manually.
.DELETE_ON_ERROR:
