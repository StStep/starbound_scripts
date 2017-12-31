#!/bin/bash
# use to update starbound server mods

/steaminstall/steamcmd/steamcmd.sh +login ststep +force_install_dir /steaminstall/starbound_server +app_update 211820 +workshop_download_item 211820 1252286788 +exit

rm -rf /steaminstall/starbound_server/mods/*

for i in $(find starbound_server/steamapps/workshop/content/211820/ -name \*.pak); do
	cp --verbose $i /steaminstall/starbound_server/mods/$(basename $(dirname $i)).pak
done
#cp -a /steaminstall/starbound_server/steamapps/workshop/content/211820/ /steaminstall/starbound_server/mods

