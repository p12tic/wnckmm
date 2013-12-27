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

AC_INIT([wnckmm], [0.1.0],
        [http://example.org], [libwnckmm-1.0])
AC_PREREQ([2.59])

AC_CONFIG_SRCDIR([wnck/wnckmm.h])
AC_CONFIG_AUX_DIR([m4])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_HEADERS([config.h])

AM_INIT_AUTOMAKE([1.9 -Wno-portability foreign tar-ustar no-define nostdinc])
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES])
AM_MAINTAINER_MODE

MM_PREREQ([0.9.6])
MM_INIT_MODULE([wnckmm-1.0])

# Copy the mm-common .pl scripts into doc/,
# and use them from there,
# so we can dist them to avoid a tarball-build dependency.
MM_CONFIG_DOCTOOL_DIR([doc])

# http://www.gnu.org/software/libtool/manual/html_node/Updating-version-info.html
AC_SUBST([LIBWNCKMM_SO_VERSION], [1:0:1])

AC_PROG_CXX
AC_DISABLE_STATIC
LT_INIT

PKG_CHECK_MODULES([WNCK], [libwnck-1.0])

# FIXME: the dependencies are incorrect
AC_SUBST([WNCKMM_MODULES], ['libwnck-1.0 >= 2.30.0 gtkmm-2.4 >= 2.4.0 glibmm-2.4 >= 2.4.0'])

PKG_CHECK_MODULES([WNCKMM], [$WNCKMM_MODULES])

MM_PKG_CONFIG_SUBST([GMMPROC_DIR], [--variable=gmmprocdir glibmm-2.4])
MM_PKG_CONFIG_SUBST([GMMPROC_EXTRA_M4_DIR], [--variable=gmmprocm4dir gtkmm-2.4 pangomm-1.4 atkmm-1.6])

MM_ARG_ENABLE_DOCUMENTATION

AC_LANG([C++])

AC_CONFIG_FILES([Makefile
                 tools/Makefile
                 wnck/${WNCKMM_MODULE_NAME}.pc:wnck/wnckmm.pc.in
                 wnck/src/Makefile
                 wnck/wnckmm/Makefile
                 doc/Makefile
                 doc/reference/Doxyfile])

AC_OUTPUT
