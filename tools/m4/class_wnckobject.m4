## This file is part of wnckmm
##
## Copyright (c) 1998-2002, 2006-2008, The gtkmm Development Team
## Copyright (c) 2002-2004, 2007, The glibmm Development Team
## Copyright (c) 2002-2003, Free Software Foundation
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

dnl $Id$
dnl Some types in libwnck have a convenient property that they are always owned
dnl by the library. This file implements a template for such classes.

define(`_CLASS_WNCKOBJECT',`dnl
_PUSH()
dnl
dnl  Define the args for later macros
define(`__CPPNAME__',`$1')
define(`__CNAME__',`$2')
define(`__CCAST__',`$3')
define(`__BASE__',_LOWER(__CPPNAME__))
define(`__CPPPARENT__',`$4')
define(`__CPARENT__',`$5')
define(`__PCAST__',`($5*)')

define(`__REAL_CNAME__',__CNAME__)
define(`__REAL_CPARENT__',__CPARENT__)

_POP()
_SECTION(SECTION_CLASS2)
') dnl end of _CLASS_WNCKOBJECT

dnl Widget and Object, and some others, have custom-written destructor implementations:
define(`_CUSTOM_DTOR',`dnl
_PUSH()
dnl Define this macro to be tested for later.
define(`__BOOL_CUSTOM_DTOR__',`$1')
_POP()
')

dnl For classes that need custom code in their cast and construct_params
dnl constructor.
define(`_CUSTOM_CTOR_CAST',`dnl
_PUSH()
dnl Define this macro to be tested for later.
define(`__BOOL_CUSTOM_CTOR_CAST__',`$1')
_POP()
')

dnl Some of the Gdk types are actually direct typedefs of their base type.
dnl This means that 2 wrap functions would have the same argument.
define(`_NO_WRAP_FUNCTION',`dnl
_PUSH()
dnl Define this macro to be tested for later.
define(`__BOOL_NO_WRAP_FUNCTION__',`$1')
_POP()
dnl ')

dnl Some gobjects actually derive from GInitiallyUnowned, which does some odd reference-counting that is useful to C coders.
dnl We don't want to expose that base class in our API, 
dnl but we do want to reverse what it does:
define(`_DERIVES_INITIALLY_UNOWNED',`dnl
_PUSH()
dnl Define this macro to be tested for later.
define(`__BOOL_DERIVES_INITIALLY_UNOWNED__',`$1')
_POP()
')


dnl
dnl _CREATE_METHOD(args_type_and_name_hpp, args_type_and_name_cpp,args_name_only);
dnl
define(`_CREATE_METHOD',`
  static Glib::RefPtr<`'__CPPNAME__`'> create(`'$1`');
_PUSH(SECTION_CC)
Glib::RefPtr<`'__CPPNAME__`'> __CPPNAME__`'::create(`'$2`')
{
  return Glib::RefPtr<`'__CPPNAME__`'>( new __CPPNAME__`'(`'$3`') );
}

_POP()
')


dnl
dnl _END_CLASS_WNCKOBJECT()
dnl   denotes the end of a class
dnl
define(`_END_CLASS_WNCKOBJECT',`
_SECTION(SECTION_HEADER1)
ifdef(`__BOOL_NO_WRAP_FUNCTION__',`dnl
',`dnl
_STRUCT_PROTOTYPE()
')dnl

__NAMESPACE_BEGIN__ class __CPPNAME__`'_Class; __NAMESPACE_END__
_SECTION(SECTION_HEADER3)

ifdef(`__BOOL_NO_WRAP_FUNCTION__',`dnl
',`dnl else
namespace Glib
{
  /** A Glib::wrap() method for this object.
   * 
   * @param object The C instance.
   * @param take_copy False if the result should take ownership of the C instance. True if it should take a new copy or ref.
   * @result A C++ instance that wraps this C instance.
   *
   * @relates __NAMESPACE__::__CPPNAME__
   */
  __NAMESPACE__::__CPPNAME__* wrap(__CNAME__`'* object, bool take_copy = false);
}
')dnl endif

dnl
dnl
_SECTION(SECTION_PHEADER)

#include <glibmm/class.h>

__NAMESPACE_BEGIN__

_PH_CLASS_DECLARATION()

__NAMESPACE_END__

_SECTION(SECTION_SRC_GENERATED)

ifdef(`__BOOL_NO_WRAP_FUNCTION__',`dnl
',`dnl else
namespace Glib
{

__NAMESPACE__::__CPPNAME__* wrap(__CNAME__`'* object, bool take_copy)
{
  return dynamic_cast<__NAMESPACE__::__CPPNAME__*> (Glib::wrap_auto ((GObject*)(object), take_copy));
  //We use dynamic_cast<> in case of multiple inheritance.
}

} /* namespace Glib */
')dnl endif


__NAMESPACE_BEGIN__


/* The *_Class implementation: */

_PCC_CLASS_IMPLEMENTATION()

Glib::ObjectBase* __CPPNAME__`'_Class::wrap_new(GObject* object)
{
  return new __CPPNAME__`'((__CNAME__*)`'object);
}


ifdef(`__BOOL_CUSTOM_CTOR_CAST__',`dnl
',`dnl
__CPPNAME__::__CPPNAME__`'(const Glib::ConstructParams& construct_params)
:
  __CPPPARENT__`'(construct_params)
{
_INITIALLY_UNOWNED_SINK
}

__CPPNAME__::__CPPNAME__`'(__CNAME__* castitem)
:
  __CPPPARENT__`'(__PCAST__`'(castitem))
{}

')dnl

ifdef(`__BOOL_CUSTOM_DTOR__',`dnl
',`dnl
__CPPNAME__::~__CPPNAME__`'()
{}

')dnl


_CC_CLASS_IMPLEMENTATION()

__NAMESPACE_END__

dnl
dnl
dnl
dnl
_POP()
dnl
dnl The actual class, e.g. Gtk::Widget, declaration:
dnl _IMPORT(SECTION_H_SIGNALPROXIES_CUSTOM)

_IMPORT(SECTION_CLASS1)

#ifndef DOXYGEN_SHOULD_SKIP_THIS

public:
  typedef __CPPNAME__ CppObjectType;
  typedef __CPPNAME__`'_Class CppClassType;
  typedef __CNAME__ BaseObjectType;
  typedef __CNAME__`'Class BaseClassType;

private:
  friend class __CPPNAME__`'_Class;
  static CppClassType `'__BASE__`'_class_;

private:
  // noncopyable
  __CPPNAME__`'(const __CPPNAME__&);
  __CPPNAME__& operator=(const __CPPNAME__&);

protected:
  explicit __CPPNAME__`'(const Glib::ConstructParams& construct_params);
  explicit __CPPNAME__`'(__CNAME__* castitem);

#endif /* DOXYGEN_SHOULD_SKIP_THIS */

public:
_IMPORT(SECTION_DTOR_DOCUMENTATION)
  virtual ~__CPPNAME__`'();

  /** Get the GType for this class, for use with the underlying GObject type system.
   */
  static GType get_type()      G_GNUC_CONST;

#ifndef DOXYGEN_SHOULD_SKIP_THIS
ifdef(`__BOOL_DYNAMIC_GTYPE_REGISTRATION__',`
  static GType get_type(GTypeModule* module)      G_GNUC_CONST;
',`')

  static GType get_base_type() G_GNUC_CONST;
#endif

  ///Provides access to the underlying C GObject.
  __CNAME__*       gobj()       { return reinterpret_cast<__CNAME__*>(gobject_); }

  ///Provides access to the underlying C GObject.
  const __CNAME__* gobj() const { return reinterpret_cast<__CNAME__*>(gobject_); }

private:
_IMPORT(SECTION_CLASS2)

public:
_H_VFUNCS_AND_SIGNALS()

')
