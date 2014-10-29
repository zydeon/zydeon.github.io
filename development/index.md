---
layout: page
title: Development
category: /
---

## Now

* Implementation of some ideas from the research project on [Neural Network art](/research/projects/nnart).

## Past

Following is a list of the projects I've been working up until now (or just maintaining). Most of them were school projects done during my Bachelor's programme at [University of Coimbra](http://www.uc.pt).

{% for r in site.data.repos %}
* [{{ r.name }}](projects/{{ r.name }}){% endfor %}
