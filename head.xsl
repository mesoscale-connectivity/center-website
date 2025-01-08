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
                    background: black;
                    padding: 1rem 0;
                    position: fixed;
                    top: 0;
                    width: 100%;
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
                .nav-logo {
                    color: white;
                    text-decoration: none;
                    font-family: "Helvetica Neue", Arial, sans-serif;
                    font-size: 2.5rem; /* 3.5rem maybe */
                    font-weight: bold;
                }
                .nav-links {
                    display: flex;
                    gap: 2rem;
                    list-style: none;
                    margin: 0;
                    padding: 0;
                    margin-left: auto;
                }
                .nav-links a {
                    color: white;
                    text-decoration: none;
                    font-weight: 700;
                }
                .nav-links a.active {
                    text-decoration: underline;
                    text-underline-offset: 10px;
                    text-decoration-color: white;
                }
                @media (max-width: 768px) {
                    .nav-links {
                        flex-direction: column;
                    }
                    .nav-container {
                        padding: 0 1rem;
                    }
                }
                .button-container {
                  display: flex;
                  justify-content: center;
                  margin: 1rem -3;
                  width: 100%;
                }
                
                .button {
                    display: inline-block;
                    padding: 25px 140px;
                    min-width: 160px;
                    text-align: center;
                    background-color: whitesmoke;
                    color: black;
                    text-decoration: none;
                    font-family: "Helvetica Neue", Arial, sans-serif;
                    font-weight: 900;
                    font-size: 20px;
                    border-radius: 0.4rem;
                    transition: background-color 0.3s ease;
                    letter-spacing: 0.5px;
                }

                @media (max-width: 1024px) {
                    .button {
                      padding: 20px 100px;
                      font-size: 18px;
                      min-width: 140px;
                  }
                  .button-container {
                    margin: 1.5rem 0;
                  }
                }
                @media (max-width: 768px) {
                  .button {
                      padding: 15px 60px;
                      font-size: 16px;
                      min-width: 120px;
                  }
                  .button-container {
                    margin: 1rem 0;
                  }
                }
                @media (max-width: 480px) {
                  .button {
                    padding: 12px 40px;
                    font-size: 14px;
                    min-width: 100px;
                    width: 80%;
                  }
                  .button-container {
                    margin: 0.8rem 0;
                  }
                } 
                
                .button:hover {
                    background-color: gray;
                }

                .footer-content {
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                    padding: 1rem 0;
                }

                .footer-left {
                    display: flex;
                    flex-direction: column;
align-items: flex-start;
gap: 1rem;
}

.footer-right {
display: flex;
align-items: center;
}

.footer-logo {
font-family: "Helvetica Neue", Arial, sans-serif;
font-size: 1.2rem;
font-weight: 500;
}

.footer-email {
font-family: "Helvetica Neue", Arial, sans-serif;
text-align: right;
}

@media (max-width: 768px) {
.footer-content {
flex-direction: column;
gap: 1.5rem;
text-align: center;
}

.footer-left {
align-items: center;
}

.footer-right {
width: 100%;
justify-content: center;
}
}
    </style>
            <link rel="stylesheet" href="assets/css/squarespace-styles.css"/>
        </head>
    </xsl:template>
</xsl:stylesheet>