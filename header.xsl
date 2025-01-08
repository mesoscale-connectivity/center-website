<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:wp="http://wordpress.org/export/1.2/">

   <!-- Common Header Template -->
    <xsl:template name="header">
    <xsl:param name="current-page"/>
        <header>
            <nav>
                <div class="nav-container">
                <a href="https://mesoscale-connectivity.org" class="nav-logo">CMC</a>
                    <ul class="nav-links">
                        <li>
                            <a href="index.html">
                                <xsl:if test="$current-page='index'">
                                    <xsl:attribute name="class">active</xsl:attribute>
                                </xsl:if>
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="working-groups.html">
                                <xsl:if test="$current-page='working-groups'">
                                    <xsl:attribute name="class">active</xsl:attribute>
                                </xsl:if>
                                Working Groups
                            </a>
                        </li>
                        <li>
                            <a href="institutions.html">
                                <xsl:if test="$current-page='institutions'">
                                    <xsl:attribute name="class">active</xsl:attribute>
                                </xsl:if>
                                Institutions
                            </a>
                        </li>
                        <li>
                            <a href="press.html">
                                <xsl:if test="$current-page='press'">
                                    <xsl:attribute name="class">active</xsl:attribute>
                                </xsl:if>
                                Press Releases
                            </a>
                        </li>
                        <li>
                            <a href="publications.html">
                                <xsl:if test="$current-page='publications'">
                                    <xsl:attribute name="class">active</xsl:attribute>
                                </xsl:if>
                                Publications
                            </a>
                        </li>
                        <li>
                            <a href="data.html">
                                <xsl:if test="$current-page='data'">
                                    <xsl:attribute name="class">active</xsl:attribute>
                                </xsl:if>
                                Data
                            </a>
                        </li>
                        <li>
                            <a href="tools.html">
                                <xsl:if test="$current-page='tools'">
                                    <xsl:attribute name="class">active</xsl:attribute>
                                </xsl:if>
                                Tools
                            </a>
                        </li>
                        <li>
                            <a href="jobs.html">
                                <xsl:if test="$current-page='jobs'">
                                    <xsl:attribute name="class">active</xsl:attribute>
                                </xsl:if>
                                Jobs
                            </a>
                        </li>
                        <li>
                            <a href="contact.html">
                                <xsl:if test="$current-page='contact'">
                                    <xsl:attribute name="class">active</xsl:attribute>
                                </xsl:if>
                                Contact
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
    </xsl:template>
</xsl:stylesheet>
