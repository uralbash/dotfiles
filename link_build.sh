#! /bin/bash
#
# link_build.sh
# Copyright (C) 2016 uralbash <root@uralbash.ru>
#
# Distributed under terms of the MIT license.
#


excludes=".git foo"


for file in .[^.]*; do
    src_path=`pwd`/$file
    dst_path=$HOME/$file
    if [[ -d $src_path ]]; then
        if [[ " ${excludes[*]} " == *" $file "* ]]; then
            echo "exclude $file dir!"
            continue
        fi
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
