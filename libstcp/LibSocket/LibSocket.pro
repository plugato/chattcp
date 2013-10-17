#-------------------------------------------------
#
# Project created by QtCreator 2013-10-17T14:20:14
#
#-------------------------------------------------

QT       += network

QT       -= gui

TARGET = LibSocket
TEMPLATE = lib
CONFIG += staticlib

SOURCES += libsocket.cpp \
    threadconnect.cpp

HEADERS += libsocket.h \
    threadconnect.h
unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}
