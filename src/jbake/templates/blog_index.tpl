layout 'layout-page.tpl', content: content, config: config,
	bodyContents: contents {
		yieldUnescaped(content.body)

		published_blog_posts.each { post ->
			a(href: "/${post.permalink}") {
				h2(post.title)
			}
			p(new java.text.SimpleDateFormat("yyyy MMMM dd", Locale.ENGLISH).format(post.date))
		}
	}