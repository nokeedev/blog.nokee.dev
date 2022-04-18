<!DOCTYPE html>
<html lang="en" prefix="og: https://ogp.me/ns#">
<head>
	<!-- Le styles -->
	<link href="/css/docs-asciidoctor.css" rel="stylesheet">
	<link href="/css/docs-asciidoctor-override.css" rel="stylesheet">
	<link href="/css/docs-asciidoctor-color-override.css" rel="stylesheet">
	<link href="/css/docs-base.css" rel="stylesheet">
	<link href="/css/blog-email-signup.css" rel="stylesheet">
	<link href="/css/blog-layout.css" rel="stylesheet">
	<% include 'component-multi-language-sample.head.gsp' %>

	<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans&family=Rajdhani" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="/css/normalize-8.0.1.css" rel="stylesheet">
	<link href="/css/prettify.css" rel="stylesheet">

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	<script src="/js/html5shiv.min.js"></script>
	<![endif]-->

	<% include 'component-title.head.gsp' %>
	<% include 'component-favicon.head.gsp' %>
	<% include 'component-menu.head.gsp' %>

	<% include 'component-meta-encoding.head.gsp' %>
	<% include 'component-meta-page-information.head.gsp' %>
	<% include 'component-meta-open-graph.head.gsp' %>
	<% include 'component-meta-twitter-card.head.gsp' %>
</head>
<body onload="prettyPrint()">
	<% include 'component-menu.body.gsp' %>
	<div class="main-content">

		<div class="chapter">
			<div class="header">
				<h1>${content.title}</h1>
			</div>

			<div class="content">
				${content.body}

				<%published_blog_posts.each {post ->%>
				<a href="/${post.permalink}"><h2>${post.title}</h2></a>
				<p>${new java.text.SimpleDateFormat("yyyy MMMM dd", Locale.ENGLISH).format(post.date)}</p>
				<%}%>
			</div>
		</div>
	</div>
<%include "fragment-footer.gsp"%>
</body>
</html>
