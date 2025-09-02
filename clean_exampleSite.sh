#!/bin/bash

echo "rm hugo.toml"
rm hugo.toml
for dir in content config public node_modules; do
    echo "rm -r $dir"
    rm -r $dir/
done
