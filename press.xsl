<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:wp="http://wordpress.org/export/1.2/">
    
    <xsl:include href="common.xsl"/>
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="/">
        <html lang="en">
            <xsl:call-template name="head"/>
            <body>
                <xsl:call-template name="header">
                    <xsl:with-param name="current-page">press</xsl:with-param>
                </xsl:call-template>
                <main>
                    <xsl:apply-templates select="//item[contains(title, 'Press Releases')]"/>
                </main>
                <xsl:call-template name="footer"/>
            </body>
        </html>
    </xsl:template>

        <xsl:template match="item">
        <article>
            <div>
                <xsl:value-of select="content:encoded" disable-output-escaping="yes"/>
            </div>
        </article>
    </xsl:template>
</xsl:stylesheet>