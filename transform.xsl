<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:wp="http://wordpress.org/export/1.2/">

    <!-- Common Head Template -->
    <xsl:template name="head">
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title><xsl:value-of select="//channel/title"/></title>
            <link rel="stylesheet" href="https://static1.squarespace.com/static/versioned-site-css/6549277279ee762c3015b1c2/19/5c5a519771c10ba3470d8101/6549277379ee762c3015b1e2/1598/site.css"/>
            <style type="text/css">
                @font-face {
                    font-family: franklin-gothic-urw;
                    src: url(https://use.typekit.net/af/2e6f07/000000000000000000011ce6/27/l?subset_id=2&amp;fvd=n5&amp;v=3);
                    font-weight: 500;
                    font-style: normal;
                }
                nav {
                    background: var(--primary);
                    padding: 1rem 0;
                    position: sticky;
                    top: 0;
                    z-index: 100;
                }
                .nav-container {
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                    max-width: 1600px;
                    margin: 0 auto;
                    padding: 0 4rem;
                }
                .nav-links {
                    display: flex;
                    gap: 2rem;
                    list-style: none;
                    margin: 0;
                    padding: 0;
                }
                .nav-links a {
                    color: white;
                    text-decoration: none;
                    font-weight: 500;
                }
                @media (max-width: 768px) {
                    .nav-links {
                        flex-direction: column;
                    }
                    .nav-container {
                        padding: 0 1rem;
                    }
                }
            </style>
            <link rel="stylesheet" href="assets/css/squarespace-styles.css"/>
        </head>
    </xsl:template>
    
    <!-- Common Header Template -->
    <xsl:template name="header">
        <header>
            <nav>
                <div class="nav-container">
                    <ul class="nav-links">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="working-groups.html">Working Groups</a></li>
                        <li><a href="institutions.html">Institutions</a></li>
                        <li><a href="publications.html">Publications</a></li>
                        <li><a href="jobs.html">Jobs</a></li>
                        <li><a href="data.html">Data</a></li>
                        <li><a href="tools.html">Tools</a></li>
                        <li><a href="contact.html">Contact</a></li>
                        <li><a href="press.html">Press Releases</a></li>
                    </ul>
                </div>
            </nav>
        </header>
    </xsl:template>

    <!-- Generate separate files for each section -->
       <xsl:template match="/">
        <!-- Index -->
        <xsl:result-document href="index.html">
            <html lang="en">
                <xsl:call-template name="head"/>
                <body>
                    <xsl:call-template name="header"/>
                    <main>
                        <xsl:apply-templates select="//item[contains(title, 'Home')]"/>
                    </main>
                </body>
            </html>
        </xsl:result-document>

        <!-- Working Groups -->
        <xsl:result-document href="working-groups.html">
            <html lang="en">
                <xsl:call-template name="head"/>
                <body>
                    <xsl:call-template name="header"/>
                    <main>
                        <xsl:apply-templates select="//item[contains(title, 'Working Groups')]"/>
                    </main>
                </body>
            </html>
        </xsl:result-document>

        <!-- Institutions -->
        <xsl:result-document href="institutions.html">
            <html lang="en">
                <xsl:call-template name="head"/>
                <body>
                    <xsl:call-template name="header"/>
                    <main>
                        <xsl:apply-templates select="//item[contains(title, 'Institutions')]"/>
                    </main>
                </body>
            </html>
        </xsl:result-document>

        <!-- Publications -->
        <xsl:result-document href="publications.html">
            <html lang="en">
                <xsl:call-template name="head"/>
                <body>
                    <xsl:call-template name="header"/>
                    <main>
                        <xsl:apply-templates select="//item[contains(title, 'Publications')]"/>
                    </main>
                </body>
            </html>
        </xsl:result-document>

        <!-- Jobs -->
        <xsl:result-document href="jobs.html">
            <html lang="en">
                <xsl:call-template name="head"/>
                <body>
                    <xsl:call-template name="header"/>
                    <main>
                        <xsl:apply-templates select="//item[contains(title, 'Jobs')]"/>
                    </main>
                </body>
            </html>
        </xsl:result-document>

        <!-- Data -->
        <xsl:result-document href="data.html">
            <html lang="en">
                <xsl:call-template name="head"/>
                <body>
                    <xsl:call-template name="header"/>
                    <main>
                        <xsl:apply-templates select="//item[contains(title, 'Data')]"/>
                    </main>
                </body>
            </html>
        </xsl:result-document>

        <!-- Tools -->
        <xsl:result-document href="tools.html">
            <html lang="en">
                <xsl:call-template name="head"/>
                <body>
                    <xsl:call-template name="header"/>
                    <main>
                        <xsl:apply-templates select="//item[contains(title, 'Tools')]"/>
                    </main>
                </body>
            </html>
        </xsl:result-document>

        <!-- Contact -->
        <xsl:result-document href="contact.html">
            <html lang="en">
                <xsl:call-template name="head"/>
                <body>
                    <xsl:call-template name="header"/>
                    <main>
                        <xsl:apply-templates select="//item[contains(title, 'Contact')]"/>
                    </main>
                </body>
            </html>
        </xsl:result-document>

        <!-- Press -->
        <xsl:result-document href="press.html">
            <html lang="en">
                <xsl:call-template name="head"/>
                <body>
                    <xsl:call-template name="header"/>
                    <main>
                        <xsl:apply-templates select="//item[contains(title, 'Press')]"/>
                    </main>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>