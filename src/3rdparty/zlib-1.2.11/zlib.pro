#include(../../../SigrokFileManager.pri)

CONFIG -= qt
#TEMPLATE = lib

#win32: versionTarget.commands = cd $$PWD;export PREFIX=$$BUILD_TREE; mingw32-make -f win32/Makefile.gcc
