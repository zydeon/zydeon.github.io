---
layout: page
title: Research
category: /
---

## Now

Currently I'm working on:

{% for p in site.pages %}
  {% if p.category == "research" and p.now %}
    {% if p.description == null %}
* {{ p.content }}
    {% else %}
* [{{ p.title }}]({{ p.url }}): {{ p.description }}
    {% endif %}
  {% endif %}
{% endfor %}

## Past

Following is a list of the projects I worked in the past:

{% for p in site.pages %}
  {% if p.category == "research" and p.now == null %}
    {% if p.description == null %}
* {{ p.content }}
    {% else %}
* [{{ p.title }}]({{ p.url }}): {{ p.description }}
    {% endif %}
  {% endif %}
{% endfor %}

### Publications

Co-authored:

* M.Abbasi, L. Paquete, A.Liefooghe, M. Pinheiro and P.Matias, [Improvements on bicriteria pairwise sequence alignment: algorithms and applications](http://dx.doi.org/10.1093/bioinformatics/btt098), Bioinformatics, 29(8):996-1003, 2013.
* L. Paquete, P. Matias, M. Abbasi, M. Pinheiro, [MOSAL: Software tools for multiobjective sequence alignment](http://dx.doi.org/10.1186/1751-0473-9-2), Source Code for Biology and Medicine, 9(2), 2014.