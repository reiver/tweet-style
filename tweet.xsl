<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml"
>
<xsl:template match="/tweet">
<html>
<head>
<meta charset="utf-8" />
<title>tweet by @<xsl:value-of select="author/username" /> (<xsl:value-of select="author/name" />): "<xsl:value-of select="text" />"</title>
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
<main>
	<h1>tweet by @<xsl:value-of select="author/username" /></h1>
	<p class="tweet-text"><xsl:value-of select="text" /></p>
	<div class="tweet-attachments">
	<xsl:for-each select="attachments/media">
	<a rel="enclosure" href="{text()}"><img src="{text()}" /></a>
	</xsl:for-each>
	</div>
	<address>by @<xsl:value-of select="author/username" /> (<xsl:value-of select="author/name" />)</address>
	<p>at <time><xsl:value-of select="created_at" /></time></p>
</main>
<section>
	<xsl:variable name="threadid" select="thread/id[1]" />
	<xsl:variable name="threadpath" select="concat('../../thread/', $threadid, '/thread.xml')" />
	<xsl:if test="thread/id"><a href="{$threadpath}">view as thread</a></xsl:if>
	<nav>
	<ul class="tweet-thread">
	<xsl:for-each select="thread/id">
		<li><a href="../{text()}/tweet.xml"><xsl:value-of select="text()" /></a></li>
	</xsl:for-each>
	</ul>
	</nav>
</section>
<footer>
	<p>
		Original URL:
		<br />
		https://twitter.com/<xsl:value-of select="author/username" />/status/<xsl:value-of select="id" />
	</p>
</footer>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
