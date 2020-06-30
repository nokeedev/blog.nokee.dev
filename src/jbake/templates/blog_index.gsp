<!DOCTYPE html>
<html lang="en" prefix="og: https://ogp.me/ns#">
<head>
	<%include "fragment-header.gsp"%>
</head>
<body onload="prettyPrint()">

	<%include 'fragment-menu.gsp'%>
	<div class="main-content">

	<div class="page-header">
		<h1>Welcome to the Gradle Native Blog</h1>
		<p>Don't wait and subscribe to the <a href="${config.feed_host}/${config.feed_file}">feed</a>.</p>
	</div>
	<%published_blog_posts.each {post ->%>
		<a href="/blog/${post.permalink}"><h2>${post.title}</h2></a>
		<p>${new java.text.SimpleDateFormat("yyyy MMMM dd", Locale.ENGLISH).format(post.date)}</p>
	<%}%>

	</div>
<%include "fragment-footer.gsp"%>
</html>
