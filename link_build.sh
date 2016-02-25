#! /bin/bash
#
# link_build.sh
# Copyright (C) 2016 uralbash <root@uralbash.ru>
#
# Distributed under terms of the MIT license.
#


excludes=".git .gitmodules"


for file in .[^.]*; do
    src_path=`pwd`/$file
    dst_path=$HOME/$file
    if [[ " ${excludes[*]} " == *" $file "* ]]; then
        echo "Exclude $file !!!"
        continue
    fi
    if [[ -d $src_path ]]; then
        echo "$file"
        rm -f $dst_path
        ln -sf $src_path/ $dst_path
    elif [[ -f $src_path ]]; then
        echo "$file"
        ln -sf $src_path $dst_path
    else
        echo "$src_path is not valid"
        exit 1
    fi
done
