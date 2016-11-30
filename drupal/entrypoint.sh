#! /bin/bash

if [[ "$1" == apache2* ]] || [ "$1" == php-fpm ]; then
    for dir in modules sites themes; do 
        if ! [ -e /mnt/data/$dir ]; then
            echo >&2 "$dir not found in - copying now..."
            mv /var/www/html/$dir.install /mnt/data/$dir
        fi
    done
fi

exec "$@"
