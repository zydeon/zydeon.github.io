#!/bin/sh

url=https://raw.githubusercontent.com/zydeon
url_escaped=$(echo "$url" | sed 's/\//\\\//g')
list=`sed -e 's/- name: //g;s///g' ../../_data/repos.yml | grep -v "#"`
for r in $list; do
  echo downloading $r ...
  mkdir -p $r

  # download readme and change local links to remote links to screenshots
  md=$(curl $url/$r/master/README.md | \
      sed -e "s/\/\(screenshots\/.*\.[a-z]*\)/$url_escaped\/$r\/master\/\1/g")

  # create file
  echo "---\nlayout: page\n---\n$md" > $r/README.md
done