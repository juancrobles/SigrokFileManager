#ifndef SIGROKUTIL_GLOBAL_H
#define SIGROKUTIL_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(SIGROKUTIL_LIBRARY)
#  define SIGROKUTILSHARED_EXPORT Q_DECL_EXPORT
#else
#  define SIGROKUTILSHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // SIGROKUTIL_GLOBAL_H
