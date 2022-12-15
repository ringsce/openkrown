#
# openkrown Makefile
#
# GNU Make required
#
COMPILE_PLATFORM=$(shell uname | sed -e 's/_.*//' | tr '[:upper:]' '[:lower:]' | sed -e 's/\//_/g')
COMPILE_ARCH=$(shell uname -m | sed -e 's/i.86/x86/' | sed -e 's/^arm.*/arm/')

#arm64 hack!
ifeq ($(shell uname -m), arm64)
  COMPILE_ARCH=arm64
endif
ifeq ($(shell uname -m), aarch64)
  COMPILE_ARCH=arm64
endif

ifeq ($(COMPILE_PLATFORM),sunos)
  # Solaris uname and GNU uname differ
  COMPILE_ARCH=$(shell uname -p | sed -e 's/i.86/x86/')
endif

ifndef BUILD_STANDALONE
  BUILD_STANDALONE =
endif
ifndef BUILD_CLIENT
  BUILD_CLIENT     =
endif
ifndef BUILD_SERVER
  BUILD_SERVER     =
endif
ifndef BUILD_GAME_SO
  BUILD_GAME_SO    =
endif
ifndef BUILD_BASEGAME
  BUILD_BASEGAME =
endif

ifndef BUILD_RENDERER_OPENGL2
  BUILD_RENDERER_OPENGL2=
endif
ifndef BUILD_AUTOUPDATER  # DON'T build unless you mean to!
  BUILD_AUTOUPDATER=0
endif

#############################################################################
#
# If you require a different configuration from the defaults below, create a
# new file named "Makefile.local" in the same directory as this file and define
# your parameters there. This allows you to change configuration without
# causing problems with keeping up to date with the repository.
#
#############################################################################
-include Makefile.local

ifeq ($(COMPILE_PLATFORM),cygwin)
  PLATFORM=mingw32
endif

ifndef PLATFORM
PLATFORM=$(COMPILE_PLATFORM)
endif
export PLATFORM

ifeq ($(PLATFORM),mingw32)
  MINGW=1
endif
ifeq ($(PLATFORM),mingw64)
  MINGW=1
endif

ifeq ($(COMPILE_ARCH),i86pc)
  COMPILE_ARCH=x86
endif

ifeq ($(COMPILE_ARCH),amd64)
  COMPILE_ARCH=x86_64
endif
ifeq ($(COMPILE_ARCH),x64)
  COMPILE_ARCH=x86_64
endif

ifeq ($(COMPILE_ARCH),powerpc)
  COMPILE_ARCH=ppc
endif
ifeq ($(COMPILE_ARCH),powerpc64)
  COMPILE_ARCH=ppc64
endif

ifeq ($(COMPILE_ARCH),axp)
  COMPILE_ARCH=alpha
endif

ifndef ARCH
ARCH=$(COMPILE_ARCH)
endif
export ARCH

ifneq ($(PLATFORM),$(COMPILE_PLATFORM))
  CROSS_COMPILING=1
else
  CROSS_COMPILING=0

  ifneq ($(ARCH),$(COMPILE_ARCH))
    CROSS_COMPILING=1
  endif
endif
export CROSS_COMPILING

ifndef VERSION
VERSION=0-.10.0
endif

ifndef CLIENTBIN
CLIENTBIN=openkrown
endif

ifndef SERVERBIN
SERVERBIN=okded
endif

ifndef BASEGAME
BASEGAME=baseo
endif

ifndef BASEGAME_CFLAGS
BASEGAME_CFLAGS=
endif


ifndef COPYDIR
COPYDIR="/usr/local/games/openkrown"
endif

ifndef COPYBINDIR
COPYBINDIR=$(COPYDIR)
endif

ifndef MOUNT_DIR
MOUNT_DIR=code
endif

ifndef BUILD_DIR
BUILD_DIR=build
endif

ifndef TEMPDIR
TEMPDIR=/tmp
endif

ifndef GENERATE_DEPENDENCIES
GENERATE_DEPENDENCIES=1
endif

ifndef USE_OPENAL
USE_OPENAL=1
endif

ifndef USE_OPENAL_DLOPEN
USE_OPENAL_DLOPEN=1
endif

ifndef USE_CURL
USE_CURL=1
endif

ifndef USE_CURL_DLOPEN
  ifdef MINGW
    USE_CURL_DLOPEN=0
  else
    USE_CURL_DLOPEN=1
  endif
endif

ifndef USE_CODEC_VORBIS
USE_CODEC_VORBIS=1
endif

ifndef USE_CODEC_OPUS
USE_CODEC_OPUS=1
endif

ifndef USE_MUMBLE
USE_MUMBLE=1
endif

ifndef USE_VOIP
USE_VOIP=1
endif

ifndef USE_FREETYPE
USE_FREETYPE=0
endif

ifndef USE_INTERNAL_LIBS
USE_INTERNAL_LIBS=1
endif

ifndef USE_INTERNAL_OGG
USE_INTERNAL_OGG=$(USE_INTERNAL_LIBS)
endif

ifndef USE_INTERNAL_VORBIS
USE_INTERNAL_VORBIS=$(USE_INTERNAL_LIBS)
endif

ifndef USE_INTERNAL_OPUS
USE_INTERNAL_OPUS=$(USE_INTERNAL_LIBS)
endif

ifndef USE_INTERNAL_ZLIB
USE_INTERNAL_ZLIB=$(USE_INTERNAL_LIBS)
endif

ifndef USE_INTERNAL_JPEG
USE_INTERNAL_JPEG=$(USE_INTERNAL_LIBS)
endif

ifndef USE_LOCAL_HEADERS
USE_LOCAL_HEADERS=$(USE_INTERNAL_LIBS)
endif

ifndef USE_RENDERER_DLOPEN
USE_RENDERER_DLOPEN=1
endif

ifndef USE_YACC
USE_YACC=0
endif

ifndef USE_AUTOUPDATER  # DON'T include unless you mean to!
USE_AUTOUPDATER=0
endif

ifndef DEBUG_CFLAGS
DEBUG_CFLAGS=-ggdb -O0
endif
