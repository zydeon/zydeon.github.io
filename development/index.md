---
layout: page
title: Development
---

## Now

Currently, I am focused on doing [research](../research) in Algorithms and Data
Structures, but most recently I developed my own [database](projects/dbms) and
a [rainfall predictor](projects/rainfall-predictor) using ML models.

## Past

{% for p in site.pages %}{% if p.category == "development"%}* [{{ p.title }}]({{ p.url }})
{% endif %}{% endfor %}
