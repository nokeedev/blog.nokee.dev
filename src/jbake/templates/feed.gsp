<% import static groovy.xml.XmlUtil.escapeXml %><?xml version="1.0"?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
	<channel>
		<title>Nokee Labs Blog</title>
		<link>${config.feed_host}</link>
		<atom:link href="${config.feed_host}/${config.feed_file}" rel="self" type="application/atom+xml" />
		<description>Gradle Native Blog</description>
		<language>en-ca</language>
		<pubDate>${new java.text.SimpleDateFormat("EEE, d MMM yyyy HH:mm:ss Z", Locale.ENGLISH).format(published_date)}</pubDate>
		<lastBuildDate>${new java.text.SimpleDateFormat("EEE, d MMM yyyy HH:mm:ss Z", Locale.ENGLISH).format(published_date)}</lastBuildDate>

		<%published_blog_posts.each {post -> %>
		<item>
			<title>${post.title}</title>
			<link>${config.site_host}/blog/${post.permalink}</link>
			<pubDate>${new java.text.SimpleDateFormat("EEE, d MMM yyyy HH:mm:ss Z", Locale.ENGLISH).format(post.date)}</pubDate>
			<guid isPermaLink="false">blog/${post.permalink}</guid>
			<description>
			${escapeXml(post.body)}
			</description>
		</item>
		<%}%>

	</channel>
</rss>
