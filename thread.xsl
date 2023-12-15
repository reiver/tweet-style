<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml"
>
<xsl:template match="/thread">
<html>
<head>
<meta charset="utf-8" />
<title>thread by @<xsl:value-of select="author/username" /> (<xsl:value-of select="author/name" />)</title>
<style>
.tweet-text {
	border-left: 0.3rem solid;
	padding: 0.1545rem 0.618rem;
	font-size: 162%;
	white-space: pre-wrap;
}
.tweet-attachments img {
	max-width: 23rem;
	max-height: 23rem;
}
</style>
</head>
<body>
<h1>thread by @<xsl:value-of select="author/username" /> (<xsl:value-of select="author/name" />)</h1>
<main>
<xsl:for-each select="tweets/id">
	<xsl:variable name="tweetid" select="text()" />
	<xsl:variable name="tweetpath" select="concat('../../status/', $tweetid, '/tweet.xml')" />
	<xsl:variable name="tweetdata" select="document($tweetpath)" />
	<section class="tweet">
		<p class="tweet-text"><xsl:value-of select="$tweetdata/tweet/text" /></p>
		<div class="tweet-attachments">
		<xsl:for-each select="$tweetdata/tweet/attachments/media">
			<a rel="enclosure" href="{text()}"><img src="{text()}" /></a>
		</xsl:for-each>
		</div>
		<address>by <a href="../../">@<xsl:value-of select="$tweetdata/tweet/author/username" /></a> (<xsl:value-of select="$tweetdata/tweet/author/name" />)</address>
		<p>at <a href="{$tweetpath}"><time><xsl:value-of select="$tweetdata/tweet/created_at" /></time></a></p>
	</section>
</xsl:for-each>
</main>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
