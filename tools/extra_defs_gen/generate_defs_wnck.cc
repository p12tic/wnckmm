/** This file is part of wnckmm

    Copyright (c) 2013-2014 Povilas Kanapickas  <povilas@radix.lt>

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with this library.  If not, see <http://www.gnu.org/licenses/>.
*/


#ifdef HAVE_CONFIG_H
# include <config.h>
#endif

#define WNCK_I_KNOW_THIS_IS_UNSTABLE
#include <libwnck/libwnck.h>

#include <glibmm_generate_extra_defs/generate_extra_defs.h>

int main(int argc, char** argv)
{
    std::cout << get_defs(WNCK_TYPE_WINDOW)
              << get_defs(WNCK_TYPE_APPLICATION)
              << get_defs(WNCK_TYPE_CLASS_GROUP)
              << get_defs(WNCK_TYPE_WORKSPACE)
              << get_defs(WNCK_TYPE_SCREEN)
              << get_defs(WNCK_TYPE_PAGER)
              << get_defs(WNCK_TYPE_TASKLIST)
              << get_defs(WNCK_TYPE_SELECTOR)
              << get_defs(WNCK_TYPE_ACTION_MENU);
  return 0;
}

