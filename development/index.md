---
layout: page
title: Development
category: /
---

## Now

Currently, I am focused on doing [research](../research) in Algorithms and Complexity Theory. 
I do write some code, when I have some time to solve [HackerRank](https://hackerrank.com) challenges.

## Past

{% for p in site.pages %}{% if p.category == "development"%}* [{{ p.title }}]({{ p.url }})
{% endif %}{% endfor %}
