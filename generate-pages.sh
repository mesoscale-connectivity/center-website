#!/bin/bash

# Create docs directory
mkdir -p docs

# Generate each page
xsltproc --output docs/index.html index.xsl Squarespace-Wordpress-Export-12-12-2024.xml
xsltproc --output docs/working-groups.html working-groups.xsl Squarespace-Wordpress-Export-12-12-2024.xml
xsltproc --output docs/institutions.html institutions.xsl Squarespace-Wordpress-Export-12-12-2024.xml
xsltproc --output docs/publications.html publications.xsl Squarespace-Wordpress-Export-12-12-2024.xml
xsltproc --output docs/jobs.html jobs.xsl Squarespace-Wordpress-Export-12-12-2024.xml
xsltproc --output docs/data.html data.xsl Squarespace-Wordpress-Export-12-12-2024.xml
xsltproc --output docs/tools.html tools.xsl Squarespace-Wordpress-Export-12-12-2024.xml
xsltproc --output docs/contact.html contact.xsl Squarespace-Wordpress-Export-12-12-2024.xml
xsltproc --output docs/press.html press.xsl Squarespace-Wordpress-Export-12-12-2024.xml