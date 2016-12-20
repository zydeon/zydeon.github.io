---
layout: page
title: Development
---

## Now

Currently, I am focused on doing [research](../research) in Algorithms and Complexity Theory, but most recently I developed my own [database](projects/dbms).

## Past

{% for p in site.pages %}{% if p.category == "development"%}* [{{ p.title }}]({{ p.url }})
{% endif %}{% endfor %}
