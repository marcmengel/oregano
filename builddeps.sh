#!/usr/bin/env bash

distribution=$(cat /etc/os-release |grep "^NAME=" |cut -d '=' -f 2)

echo "Distribution detected is \"${distribution}\""

if [ "${distribution}" = "\"Ubuntu\"" ]; then # idiots...
    apt-get install -y python libglib2.0-dev intltool libgtk-3-dev libxml2-dev libgoocanvas-2.0-dev libgtksourceview-3.0-dev gnucap clang gcc
elif [ "${distribution}" = "Fedora" ]; then
    dnf install -y python gtk3-devel libxml2-devel gtksourceview3-devel intltool glib2-devel goocanvas2-devel desktop-file-utils clang gcc
else
    echo "No idea what to do.. trying to run regular builddeps"
fi