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
	padding: 0.3rem 0.6rem;
	font-size: 200%;
}
</style>
</head>
<body>
<main>
	<h1>tweet by @<xsl:value-of select="author/username" /></h1>
	<p class="tweet-text"><xsl:value-of select="text" /></p>
	<address>by @<xsl:value-of select="author/username" /> (<xsl:value-of select="author/name" />)</address>
	<p>at <time><xsl:value-of select="created_at" /></time></p>
</main>
<footer>
	<p>
		Original URL:
		<br />
		https://twitter.com/reiver/status/<xsl:value-of select="id" />
	</p>
</footer>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
