TEMPLATE = app
CONFIG += console
CONFIG -= debug_and_release

OBJECTS_DIR = $${OUT_PWD}/obj

SOURCES += OpenSeesInput.c

macx{
    CONFIG-=app_bundle
    INCLUDEPATH+="/usr/local/jansson/include"
    LIBS+="/usr/local/jansson/lib/libjansson.a"
}

#Assuming jansson library share the same parent folder with the app and is built with the same compiler
win32{
    INCLUDEPATH+="../../../jansson/build/include"
    LIBS+="../../../jansson/build/x64/Release/jansson.lib"
}

unix:!macx{
    LIBS+="/usr/lib/x86_64-linux-gnu/libjansson.a"
}
