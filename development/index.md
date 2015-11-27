---
layout: page
title: Development
category: /
---

## Now

Currently, I am focused on doing [research](../research) in Algorithms and Complexity Theory, but I also enjoy challenging myself with [HackerRank](https://hackerrank.com) problems.

## Past

{% for p in site.pages %}{% if p.category == "development"%}* [{{ p.title }}]({{ p.url }})
{% endif %}{% endfor %}
