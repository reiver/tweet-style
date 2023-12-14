# tweet-style

**tweet-style** is an XSL / XSLT stylesheet for Twitter tweets stored in an XML format like this:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<tweet>
	<created_at>2008-03-18T00:31:15.000Z</created_at>
	<id>12345</id>
	<lang>en</lang>
	<text>Hello world!</text>
	<author>
                <created_at>2007-02-15T05:32:42.000Z</created_at>
                <id>141516</id>
                <name>Joe Blow</name>
                <username>superjow</username>
        </author>
</tweet>
```

You use tweet-style to turn XML that has that structure into XHTML that can be viewed in the web-browser.

## Import

To import and use **tweet-style** in your XML files, add code similar to this to your XML files:
```xml
<?xml-stylesheet type="text/xsl" href="/modules/tweet-style/tweet.xsl"?>
```

**NOTE THAT THE PATH (i.e., what is in the "href" attribute) THAT YOU USE WILL LIKELY BE DIFFERENT.**

Set the value of the "`href`" to wherever you installed it.

For example, if you installed **tweet-style** at "`../../style/tweet-style/`", then the XML code you add would probably be:
```xml
<?xml-stylesheet type="text/xsl" href="../../style/tweet-style/tweet.xsl"?>
```

## Installation

To install **tweet-style** you can either just put the `tweet.xsl` somewhere on your web-server.
Maybe at: "/style/tweet-style/tweet.xsl", or somewhere else.

Alternatively you can use a git submodule.
For example:

```
git submodule add https://sourcecode.social/reiver/tweet-style tweet-style
```

## Author

**tweet-style** was written by [Charles Iliya Krempeaux](http://changelog.ca)
