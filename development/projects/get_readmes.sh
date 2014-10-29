#!/bin/sh

url=https://raw.githubusercontent.com/zydeon
url_escaped=$(echo "$url" | sed 's/\//\\\//g')
list=`sed -e 's/- name: //g' ../../_data/repos.yml`
for r in $list; do
  echo downloading $r ...
  mkdir -p $r

  # download readme and change local links to remote links to screenshots
  md=$(curl $url/$r/master/README.md | \
      sed -e "s/\/\(screenshots\/[0-9]*\.[a-z]*\)/$url_escaped\/$r\/master\/\1/g")

  # create file
  echo "---\nlayout: page\n---\n$md" > $r/index.md
done