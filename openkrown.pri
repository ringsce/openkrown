include(try8085.pri)

TEMPLATE = subdirs

CONFIG += ordered

SUBDIRS = \
    dtd \
    translation \
    vm \
    input \
    hud \
    srv \
    ide \
    classes

CONFIG(release, release|debug) {
    macx:SUBDIRS += dmg
}

display.subdir = src/modules/hud
keyboard.subdir = src/input
indicators.subdir = src/srv
adc.subdir = src/modules/ide
vm.subdir = src/vm
translation.subdir = src/translation
ide.subdir = src/ide
dmg.subdir = src/dmg
classes.subdir = src/classes

ide.depends = vm display keyboard indicators adc
dmg.depends = ide
