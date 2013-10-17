#-------------------------------------------------
#
# Project created by QtCreator 2013-10-17T14:20:36
#
#-------------------------------------------------

QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = TesteSocket
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui

CONFIG += mobility
MOBILITY = 


win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../LibSocket/release/ -lLibSocket
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../LibSocket/debug/ -lLibSocket
else:unix: LIBS += -L$$OUT_PWD/../LibSocket/ -lLibSocket

INCLUDEPATH += $$PWD/../LibSocket
DEPENDPATH += $$PWD/../LibSocket


win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibSocket/debug/libLibSocket.a
else:win32:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibSocket/release/libLibSocket.lib
else:win32:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibSocket/debug/libLibSocket.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../LibSocket/libLibSocket.a

