---
layout: page
permalink: /categories/
title: Categories
---

<h5>You can view posts by <a href="/archive/">date</a>, <a href="/categories/">category</a> or <a href="/tags/">tag</a>.</h5>

<div>
{% assign categories_sorted = site.categories | sort %}
{% for category in categories_sorted %}
  <div class="archive-group">
    {% capture category_name %}{{ category | first }}{% endcapture %}
	
    <div id="#{{ category_name | slugize }}"></div>

    <h3 class="category-head">{{ category_name }}</h3>
    <a name="{{ category_name | slugize }}"></a>

    {% for post in site.categories[category_name] %}
    <article class="archive-item">
      <a href="{{ post.url }}">{{ post.title }}</a>
    </article>
    {% endfor %}
  </div>
{% endfor %}
</div>
