<!DOCTYPE html>
<html lang="en" prefix="og: https://ogp.me/ns#">
<head>
	<% include 'fragment-header-generic.gsp' %>
	<link href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>css/docs-asciidoctor.css" rel="stylesheet">
	<link href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>css/docs-asciidoctor-override.css" rel="stylesheet">
	<link href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>css/docs-asciidoctor-color-override.css" rel="stylesheet">
	<link href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>css/docs-base.css" rel="stylesheet">
	<link href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>css/multi-language-sample.css" rel="stylesheet">
	<link href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>css/blog-email-signup.css" rel="stylesheet">
	<link href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>css/blog-layout.css" rel="stylesheet">
	<% if (content.useroughviz && content.useroughviz == 'true') {%><script src="https://unpkg.com/rough-viz@1.0.6"></script><%}%>
</head>
<body onload="prettyPrint()">

	<%include 'fragment-menu.gsp'%>
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

	<!-- Start of comment -->
	<div id="disqus_thread"></div>
    <script>

    /**
    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables
    */
    var disqus_config = function () {
    this.page.url = '${config.site_host}/${content.uri}';
    this.page.identifier = '${content.id}';
    };
    (function() { // DON'T EDIT BELOW THIS LINE
    var d = document, s = d.createElement('script');
    s.src = 'https://nokeedev.disqus.com/embed.js';
    s.setAttribute('data-timestamp', +new Date());
    (d.head || d.body).appendChild(s);
    })();
    </script>
    <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
<%include "fragment-footer.gsp"%>
</html>
