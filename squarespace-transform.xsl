<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:wp="http://wordpress.org/export/1.2/">
  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title><xsl:value-of select="//channel/title"/></title>
        <!-- Squarespace Styles -->
      <link rel="stylesheet" href="https://static1.squarespace.com/static/versioned-site-css/6549277279ee762c3015b1c2/19/5c5a519771c10ba3470d8101/6549277379ee762c3015b1e2/1598/site.css"/>
      
      <!-- Typekit Fonts -->
      <style type="text/css">
        @font-face {
          font-family: franklin-gothic-urw;
          src: url(https://use.typekit.net/af/2e6f07/000000000000000000011ce6/27/l?subset_id=2&amp;fvd=n5&amp;v=3);
          font-weight: 500;
          font-style: normal;
        }
      </style>
      
      <!-- Custom styles -->
      <link rel="stylesheet" href="assets/css/squarespace-styles.css"/>
      </head>
      <body>
        <header class="header">
          <div class="container">
            <h1><xsl:value-of select="//channel/title"/></h1>
            <p><xsl:value-of select="//channel/link"/></p>
          </div>
        </header>

        <nav>
          <div class="nav-container">
            <ul class="nav-links">
              <li><a href="#home">Home</a></li>
              <li><a href="#working-groups">Working Groups</a></li>
              <li><a href="#institutions">Institutions</a></li>
              <li><a href="#publications">Publications</a></li>
              <li><a href="#jobs">Jobs</a></li>
              <li><a href="#data">Data</a></li>
              <li><a href="#tools">Tools</a></li>
              <li><a href="#contact">Contact</a></li>
              <li><a href="#press">Press Releases</a></li>
            </ul>
          </div>
        </nav>

        <main class="container">
          <div class="content">
            <!-- Authors -->
            <section class="section">
              <h2>Authors</h2>
              <xsl:for-each select="//wp:author">
                <div>
                  <h3><xsl:value-of select="wp:author_display_name"/></h3>
                  <p><xsl:value-of select="wp:author_email"/></p>
                </div>
              </xsl:for-each>
            </section>

            <!-- Content -->
            <section class="section">
              <xsl:apply-templates select="//item"/>
            </section>
          </div>
        </main>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="item">
    <xsl:variable name="section-id">
    <xsl:choose>
      <xsl:when test="contains(title, 'Home')">home</xsl:when>
      <xsl:when test="contains(title, 'Working Groups')">working-groups</xsl:when>
      <xsl:when test="contains(title, 'Institutions')">institutions</xsl:when>
      <xsl:when test="contains(title, 'Publications')">publications</xsl:when>
      <xsl:when test="contains(title, 'Jobs')">jobs</xsl:when>
      <xsl:when test="contains(title, 'Data')">data</xsl:when>
      <xsl:when test="contains(title, 'Tools')">tools</xsl:when>
      <xsl:when test="contains(title, 'Contact')">contact</xsl:when>
      <xsl:when test="contains(title, 'Press')">press</xsl:when>
      <xsl:otherwise>other</xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
     <article id="{$section-id}" class="section">
      <h2><xsl:value-of select="title"/></h2>
      <div><xsl:value-of select="content:encoded" disable-output-escaping="yes"/></div>
    </article>
  </xsl:template>
</xsl:stylesheet>