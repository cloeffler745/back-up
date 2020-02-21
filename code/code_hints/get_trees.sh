#!/bin/bash/

find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/" > DIRECTORIES.txt

find | sed 's|[^/]*/|- |g' > WITH_FILES.txt

