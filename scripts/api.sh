#! /bin/sh
#
# api.sh
# Copyright (C) 2017 edgardleal <edgardleal@localhost>
#
# Distributed under terms of the MIT license.
#
set -eu
declare -r script_dir="$(dirname $0)"

php -S localhost:8888 "${script_dir}/../server/php/api.php"

exit 0
