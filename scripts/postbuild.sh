#!/bin/bash

# Translations
# generate pot file
echo "update translations $@"
# find ../../../po/* -exec msgmerge --update {} ../../../po/textsecure.nanuc.pot \;
# # rm ../../../po/*~~
# # cp -a ../lib ../build/tmp
# # if [ $mode = "dev" ];then
# # 	#copy config.yml or rootCA.pem
# # 	cp -a dev/* build/
# # fi
#gettext-compile --output ../../../axolotl-web/translations/translations.json ../../../po/*
# # Build and include translations
# cp ../../../po/textsecure.nanuc.pot $@
# for po in ../../../po/*.po; do
# 	loc=$(echo $(basename $po)|cut -d'.' -f1)
# 	dir=$@/share/locale/$loc/LC_MESSAGES
# 	mkdir -p $dir
# 	msgfmt $po -o $dir/textsecure.nanuc.mo
# done
# copy click files
cp -a ../../../click/* $@
# Build axolotl-web
cd ../../../axolotl-web&&npm run translate &&npm run build && mkdir $@/axolotl-web&&cp dist $@/axolotl-web/ -r
