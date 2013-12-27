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

include(convert_base.m4)
include(convert_glib.m4)
include(convert_gtk.m4)
include(class_wnckobject.m4)
include(class_gtkobject.m4)

_EQUAL(gulong,unsigned long)

_CONV_ENUM(Wnck,MotionDirection)
_CONV_ENUM(Wnck,PagerDisplayMode)
_CONV_ENUM(Wnck,WindowType)
_CONV_ENUM(Wnck,WindowState)
_CONV_ENUM(Wnck,WindowActions)
_CONV_ENUM(Wnck,WindowGravity)
_CONV_ENUM(Wnck,WindowMoveResizeMask)

# wnck -> wnckmm
_CONVERSION(`WnckApplication*',`Application*',`Glib::wrap($3)')
_CONVERSION(`WnckClassGroup*',`ClassGroup*',`Glib::wrap($3)')
_CONVERSION(`WnckScreen*',`Screen*',`Glib::wrap($3)')
_CONVERSION(`WnckWindow*',`Window*',`Glib::wrap($3)')
_CONVERSION(`WnckWorkspace*',`Workspace*',`Glib::wrap($3)')

# wnckmm -> wnck
_CONVERSION(`Application*',`WnckApplication*',`$3->gobj()')
_CONVERSION(`ClassGroup*',`WnckClassGroup*',`$3->gobj()')
_CONVERSION(`Window*',`WnckWindow*',`$3->gobj()')
_CONVERSION(`Workspace*',`WnckWorkspace*',`$3->gobj()')
_CONVERSION(`const Workspace*',`WnckWorkspace*',`const_cast<WnckWorkspace*>($3->gobj())')
