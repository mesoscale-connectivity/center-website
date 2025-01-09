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
                  margin: 2rem 0;
                  width: 100%;
                }
                
                .button {
                    display: inline-block !important;
                    padding: 25px 140px !important;
                    min-width: 160px !important;
                    text-align: center !important;
                    background-color: whitesmoke !important;
                    color: black !important;
                    text-decoration: none !important;
                    font-family: "Helvetica Neue", Arial, sans-serif !important;
                    font-weight: 900 !important;
                    font-size: 20px !important;
                    border-radius: 0.4rem !important;
                    transition: background-color 0.3s ease !important;
                    letter-spacing: 0.5px !important;
                }

                @media (max-width: 1024px) {
                    .button {
                      padding: 20px 100px !important;
                      font-size: 18px !important;
                      min-width: 140px !important;
                  }
                  .button-container {
                    margin: 1.5rem 0 !important;
                  }
                }
                @media (max-width: 768px) {
                  .button {
                      padding: 15px 60px !important;
                      font-size: 16px !important;
                      min-width: 120px !important;
                  }
                  .button-container {
                    margin: 1rem 0 !important;
                  }
                }
                @media (max-width: 480px) {
                  .button {
                    padding: 12px 40px !important;
                    font-size: 14px !important;
                    min-width: 100px !important;
                    width: 80% !important;
                  }
                  .button-container {
                    margin: 0.8rem 0 !important;
                  }
                } 
                
                .button:hover {
                    background-color: gray !important;
                }

                .footer-container {
                    max-width: 1600px;
                    margin: 0 auto;
                    padding: 0 4rem;
                }

                .footer-content {
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                    padding: 2rem 0;
                }

                .footer-left {
                    display: flex;
                    flex-direction: column;
                    gap: 1rem;
                    align-items: flex-start;
                }

                .footer-right {
                    display: flex;
                    height: 100%;
                    align-items: center;
                }

                .social-links {
                    display: flex;
                    gap: 1.5rem;
                    align-items: center;
                }

                .social-links svg {
                    width: 20px;
                    height: 20px;
                    fill: black !important;
                    transition: opacity 0.3s ease;
                }

                .social-links a {
                    display: flex;
                    align-items: center;
                    padding: 6px;
                    border: 2px solid black;
                    border-radius: 6px;
                    margin: 0 4px;
                }

                .social-links a:hover svg {
                    opacity: 0.7;
                }

                .footer-email {
                    text-decoration: underline;
                }

                .footer-email a:hover {
                    opacity: 0.8;
                }

                .footer-logo, .footer-email {
                    font-family: "Helvetica Neue", Arial, sans-serif;
                    font-size: 1.2rem;
                    line-height: 1.5;
                    color: #4682B4;
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
            <script src="assets/js/animations.js" defer="defer"></script>
        </head>
    </xsl:template>
</xsl:stylesheet>