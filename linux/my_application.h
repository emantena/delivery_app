#ifndef FLUTTER_delivery_appLICATION_H_
#define FLUTTER_delivery_appLICATION_H_

#include <gtk/gtk.h>

G_DECLARE_FINAL_TYPE(MyApplication, delivery_application, MY, APPLICATION,
                     GtkApplication)

/**
 * delivery_application_new:
 *
 * Creates a new Flutter-based application.
 *
 * Returns: a new #MyApplication.
 */
MyApplication* delivery_application_new();

#endif  // FLUTTER_delivery_appLICATION_H_
