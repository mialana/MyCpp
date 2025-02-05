QT += core gui widgets

TEMPLATE = lib

CONFIG += c++17

INCLUDEPATH += $$PWD/include

DEPENDPATH += $$PWD/include

DEFINES += MYCPP_LIBRARY 

DEFINES += PROJECT_PATH="\"$$PWD\""

# disables all the APIs deprecated before Qt 6.0.0
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    

SOURCES += \
    mycpp/myutils.cpp \

HEADERS += \
    mycpp/MyCpp_global.h \
    mycpp/glmutils.h \
    mycpp/mydefines.h \
    mycpp/myutils.h \
    

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    .clang_format \
    .gitignore \
    README.md
