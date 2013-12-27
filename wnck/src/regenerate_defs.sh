#!/bin/bash

# set the first argument to the {path-to-libglibmm-source}/tools directory
$1/defs_gen/h2def.py /usr/include/libwnck-1.0/libwnck/*.h > wnck_methods.defs
$1/enum.pl /usr/include/libwnck-1.0/libwnck/*.h > wnck_enums.defs
