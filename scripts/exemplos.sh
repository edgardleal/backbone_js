#!/bin/bash
#
# exemplos.sh
# Copyright (C) 2017 edgardleal <edgardleal@localhost>
#
# Distributed under terms of the MIT license.
#
#==============================================================================
set -eu

declare -r script_dir="$(dirname $0)"
declare text=""
declare i=1;
for e in $(ls exemplos)
do
    echo "  " $i " - " $e
    text="${text} $i - $e"

    i=$(($i+1))
done
echo 

read -p "Dirite o número do exemplo: " exemplo_id

pasta=$(echo $text | sed "s/.*\(${exemplo_id} - [0-9]\+[^ ]\+\).*/\1/g" | awk -F ' - ' '{print $2}')

echo "Selecao: [$pasta]"

php -S localhost:8080 -t "${script_dir}/../exemplos/${pasta}"


exit 0
