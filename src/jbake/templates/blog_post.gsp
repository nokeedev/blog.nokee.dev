<!DOCTYPE html>
<html lang="en" prefix="og: https://ogp.me/ns#">
<head>
	<% include 'component-asciidoc.head.gsp' %>
	<link href="/css/docs-base.css" rel="stylesheet">
	<link href="/css/blog-email-signup.css" rel="stylesheet">
	<link href="/css/blog-layout.css" rel="stylesheet">
	<% if (content.useroughviz && content.useroughviz == 'true') {%><script src="https://unpkg.com/rough-viz@1.0.6"></script><%}%>

	<!-- Le styles -->
	<% include 'component-multi-language-sample.head.gsp' %>

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
				<%if (content.leadimage) {%><img src="${content.leadimage}"/><%}%>
				<h1>${content.title}</h1>
				<p><em>${new java.text.SimpleDateFormat("dd MMMM yyyy", Locale.ENGLISH).format(content.date)}</em></p>
			</div>

			<div class="content">
				${content.body}
			</div>
		</div>
	</div>

	<div id="push"></div>

	<!-- Begin Mailchimp Signup Form -->
	<p style="text-align:center">Stay on top of new features and news by subscribing:</p>
	<div id="mc_embed_signup">
		<form action="https://dev.us4.list-manage.com/subscribe/post?u=c1b91750dbe075432c8729552&amp;id=93402e2466" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
			<div id="mc_embed_signup_scroll">

			<input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="email address" required>
			<!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
			<div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_c1b91750dbe075432c8729552_93402e2466" tabindex="-1" value=""></div>
			<div class="clear"><input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button"></div>
			</div>
			<small>* We will never send spam, and you can unsubscribe at any time</small>
		</form>
	</div>

	<!--End mc_embed_signup-->
<%include "fragment-footer.gsp"%>
<% include 'component-multi-language-sample.foot.gsp' %>
</body>
</html>
