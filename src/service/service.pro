TEMPLATE = app
CONFIG -= qt
CONFIG += console
LIBS += -lUser32 -lShell32 -lKernel32 -lUserenv -lWtsapi32
contains(QT_ARCH, x86_64) {
    CONFIG(debug, debug|release) {
        DESTDIR = $$PWD/../../bin64/Debug
        TARGET = SPlayerService64d
    } else {
        DESTDIR = $$PWD/../../bin64/Release
        TARGET = SPlayerService64
    }
} else {
    CONFIG(debug, debug|release) {
        DESTDIR = $$PWD/../../bin/Debug
        TARGET = SPlayerServiced
    } else {
        DESTDIR = $$PWD/../../bin/Release
        TARGET = SPlayerService
    }
}
exists($$PWD/../../ci_version.h) {
    DEFINES += CI
}
include($$PWD/../../version.pri)
QMAKE_TARGET_COMPANY = wangwenx190
QMAKE_TARGET_DESCRIPTION = SPlayer Protect Service
QMAKE_TARGET_COPYRIGHT = GPLv3
QMAKE_TARGET_PRODUCT = SPlayer Protect Service
RC_ICONS = ../splayer/resources/splayer.ico
SOURCES += main.cpp
