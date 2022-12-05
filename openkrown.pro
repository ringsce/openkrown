include(openkrown.pri)

TEMPLATE = subdirs

CONFIG += ordered

SUBDIRS = \
    vm \
   translation \
   classes  \
   input \
   dtd \
   srv \
   ide

CONFIG(release, release|debug) {
    macx:SUBDIRS += dmg
}

classes.subdir = src/modules/classes
input.subdir = src/modules/input
dtd.subdir = src/modules/dtd
vm.subdir = src/vm
srv.subdir = src/srv
translation.subdir = src/translation
ide.subdir = src/ide
dmg.subdir = src/dmg

ide.depends = vm classes input dtd srv
dmg.depends = ide
