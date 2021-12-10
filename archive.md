---
layout: page
permalink: /archive/
title: Archive
---
<h5>You can view posts by <a href="/archive/">date</a>, <a href="/categories">category</a> or <a href="/tags">tag</a>.</h5>

<div class="post">
	{% for post in site.posts %}
	{% unless post.next %}
	<h3>{{ post.date | date: '%B %Y' }}</h3>
	{% else %}
	{% capture year %}{{ post.date | date: '%Y %b' }}{% endcapture %}
	{% capture nyear %}{{ post.next.date | date: '%Y %b' }}{% endcapture %}
	{% if year != nyear %}
	<h3>{{ post.date | date: '%B %Y' }}</h3>
	{% endif %}
	{% endunless %}
    <a href="{{ post.url }}">{{ post.title }}</a><br>
	{% endfor %}
</div>
