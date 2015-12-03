# st version
VERSION = 0.6
#REMOVE_IF_ON_OSX = -lrt

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /opt/X11/include
X11LIB = /opt/X11/lib

# includes and libs
INCS = -I. -I/usr/include -I${X11INC} \
       `pkg-config --cflags fontconfig` \
       `pkg-config --cflags freetype2`
LIBS = -L/usr/lib -lc -L${X11LIB} -lm ${REMOVE_IF_ON_OSX} -lX11 -lutil -lXext -lXft \
       `pkg-config --libs fontconfig`  \
       `pkg-config --libs freetype2`


# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" -D_XOPEN_SOURCE=600
CFLAGS += -g -std=c99 -pedantic -Wall -Wvariadic-macros -Os ${INCS} ${CPPFLAGS}
LDFLAGS += -g ${LIBS}

# compiler and linker
# CC = cc

