#!/bin/bash
echo "Enter version"
read version
sed -i "s/VERSION = \".*\"/VERSION = \"$version\"/g" lib/bulma/sass/version.rb
rm -rf app/assets/stylesheets/*
rm -rf build/
git clone -b "$version" https://github.com/jgthms/bulma build/
mv build/bulma.sass app/assets/stylesheets/
mv build/sass/ app/assets/stylesheets/
rm -rf build/
gem build bulma-sass.gemspec
gem push "bulma-sass-$version.gem"
git add .
git commit -m "Release v$version"
git tag "$version"
git push --follow-tags
