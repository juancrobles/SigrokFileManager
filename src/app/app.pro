include(../../SigrokFileManager.pri)
include(../3rdparty/quazip/quazip/quazip.pri)
include(../SigrokUtil/SigrokUtil.pri)

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = $$APP_TARGET
DESTDIR = $$APP_PATH

TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui

