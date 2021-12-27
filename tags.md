---
layout: page
permalink: /tags/
title: Tags
---

<h5>You can view posts by <a href="/archive/">date</a>, <a href="/categories/">category</a> or <a href="/tags/">tag</a>.</h5>

<div class="tag-list">
  {% assign tags_sorted = site.tags | sort %}
  {% for tag in tags_sorted %}
  <a href="#{{ tag | first | slugize }}">{{ tag | first }} <strong><small><sup>{{tag[1].size}}</sup></small></strong></a>
  {% endfor %}
</div>

<div>
{% assign tags_sorted = site.tags | sort %}
{% for tag in tags_sorted %}
  <div class="archive-group">
    {% capture tag_name %}{{ tag | first }}{% endcapture %}
	
    <div id="#{{ tag_name | slugize }}"></div>

    <h2 class="tag-head"><small>{{ tag_name }} <small><sup><strong>{{tag[1].size}}</strong></sup></small></small></h2>
    <a name="{{ tag_name | slugize }}"></a>

    {% for post in site.tags[tag_name] %}
    <article class="archive-item">
      <a href="{{ post.url }}">{{ post.title }}</a>&nbsp;&nbsp;
      <small><small><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%-d %b %Y" }}</time></small></small>
    </article>
    {% endfor %}
  </div>
{% endfor %}
</div>


