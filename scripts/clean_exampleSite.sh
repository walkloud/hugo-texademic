#!/bin/bash

echo "rm hugo.toml"
rm hugo.toml
if [[ -d assets/sass/bootstrap ]]; then
    rm -r assets/sass/bootstrap
fi
for dir in content config public node_modules; do
    echo "rm -r $dir"
    rm -r $dir/
done
