include(../../SigrokFileManager.pri)

QT       -= gui

TARGET = SigrokUtil
TEMPLATE = lib

DESTDIR = $$LIB_PATH
DLLDESTDIR = $$APP_PATH

DEFINES += SIGROKUTIL_LIBRARY

SOURCES += sessionmanager.cpp

HEADERS += sessionmanager.h\
        sigrokutil_global.h

