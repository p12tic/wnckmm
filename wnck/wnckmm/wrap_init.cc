#include <glibmm.h>

// This file is not generated, it must be updated with new classes

// Disable the 'const' function attribute of the get_type() functions.
// GCC would optimize them out because we don't use the return value.
#undef  G_GNUC_CONST
#define G_GNUC_CONST /* empty */

#include <wnckmm/wrap_init.h>
#include <glibmm/error.h>
#include <glibmm/object.h>

// #include the widget headers so that we can call the get_type() static methods:
#include "action-menu.h"
#include "application.h"
#include "class-group.h"
#include "pager.h"
#include "screen.h"
#include "selector.h"
#include "tasklist.h"
#include "window.h"
#include "workspace.h"

extern "C"
{
//Declarations of the *_get_type() functions:

GType wnck_action_menu_get_type(void);
GType wnck_application_get_type(void);
GType wnck_class_group_get_type(void);
GType wnck_pager_get_type(void);
GType wnck_screen_get_type(void);
GType wnck_selector_get_type(void);
GType wnck_tasklist_get_type(void);
GType wnck_window_get_type(void);
GType wnck_workspace_get_type(void);

//Declarations of the *_error_quark() functions:

} // extern "C"

namespace Wnck {

//Declarations of the *_Class::wrap_new() methods, instead of including all the private headers:

class ActionMenu_Class { public: static Glib::ObjectBase* wrap_new(GObject*); };
class Application_Class { public: static Glib::ObjectBase* wrap_new(GObject*); };
class ClassGroup_Class { public: static Glib::ObjectBase* wrap_new(GObject*); };
class Pager_Class { public: static Glib::ObjectBase* wrap_new(GObject*); };
class Screen_Class { public: static Glib::ObjectBase* wrap_new(GObject*); };
class Selector_Class { public: static Glib::ObjectBase* wrap_new(GObject*); };
class Tasklist_Class { public: static Glib::ObjectBase* wrap_new(GObject*); };
class Window_Class { public: static Glib::ObjectBase* wrap_new(GObject*); };
class Workspace_Class { public: static Glib::ObjectBase* wrap_new(GObject*); };

void wrap_init()
{
  // Register Error domains in the main namespace:

  // Map gtypes to gtkmm wrapper-creation functions:
  Glib::wrap_register(wnck_action_menu_get_type(), &ActionMenu_Class::wrap_new);
  Glib::wrap_register(wnck_application_get_type(), &Application_Class::wrap_new);
  Glib::wrap_register(wnck_class_group_get_type(), &ClassGroup_Class::wrap_new);
  Glib::wrap_register(wnck_pager_get_type(), &Pager_Class::wrap_new);
  Glib::wrap_register(wnck_screen_get_type(), &Screen_Class::wrap_new);
  Glib::wrap_register(wnck_selector_get_type(), &Selector_Class::wrap_new);
  Glib::wrap_register(wnck_tasklist_get_type(), &Tasklist_Class::wrap_new);
  Glib::wrap_register(wnck_window_get_type(), &Window_Class::wrap_new);
  Glib::wrap_register(wnck_workspace_get_type(), &Workspace_Class::wrap_new);

  // Register the gtkmm gtypes:
  ActionMenu::get_type();
  Application::get_type();
  ClassGroup::get_type();
  Pager::get_type();
  Screen::get_type();
  Selector::get_type();
  Tasklist::get_type();
  Window::get_type();
  Workspace::get_type();

} // wrap_init()

} // Wnck

