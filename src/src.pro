include(../SigrokFileManager.pri)

TEMPLATE = subdirs
CONFIG += ordered
SUBDIRS = \
    #3rdparty/zlib-1.2.11/zlib.pro \
    #C:/Qt/5.7/Src/qtbase/src/3rdparty/zlib.pri \
    SigrokUtil \
    app
