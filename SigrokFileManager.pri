!isEmpty(SFM_PRI_INCLUDED):error("SigrokFileManager.pri already included")
SFM_PRI_INCLUDED = 1

APP_VERSION = 0.1.0
DEFINES += APP_VERSION_STR=\"$${APP_VERSION}\"

APP_TARGET = "sfm"

SOURCE_TREE = $$PWD
3RDPARTY_SRC = $$SOURCE_TREE/src/3rdparty
DEST_TREE = $$SOURCE_TREE

BUILD_TREE = $$SOURCE_TREE/build
TMP_PATH = $$SOURCE_TREE/build/tmp
APP_PATH = $$BUILD_TREE/bin
LIB_PATH = $$BUILD_TREE/lib

CONFIG(debug, debug|release):OBJECTS_DIR = $${TMP_PATH}/.obj/debug-shared/$${TARGET}
CONFIG(release, debug|release):OBJECTS_DIR = $${TMP_PATH}/.obj/release-shared/$${TARGET}

CONFIG(debug, debug|release):MOC_DIR = $${TMP_PATH}/.moc/debug-shared/$${TARGET}
CONFIG(release, debug|release):MOC_DIR = $${TMP_PATH}/.moc/release-shared/$${TARGET}

RCC_DIR = $${TMP_PATH}/.rcc
UI_DIR = $${TMP_PATH}/.uic

LIBS += -L$$LIB_PATH

win32 {
    INCLUDEPATH+=$$3RDPARTY_SRC/zlib-1.2.11
    #LIBS+=-L$$3RDPARTY_SRC/zlib-1.2.11/debug $$3RDPARTY_SRC/zlib-1.2.11/debug/libzlib.a
    LIBS+=-L$$3RDPARTY_SRC/zlib-1.2.11 -lz
    #INCLUDEPATH+=C:/Qt/5.7/Src/qtbase/src/3rdparty/zlib
}

DEFINES += QUAZIP_STATIC
