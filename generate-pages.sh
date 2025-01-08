#!/bin/bash

# Create output directory
mkdir -p output

# Generate each page
xsltproc --output output/index.html index.xsl Squarespace-Wordpress-Export-12-12-2024.xml
xsltproc --output output/working-groups.html working-groups.xsl Squarespace-Wordpress-Export-12-12-2024.xml
xsltproc --output output/institutions.html institutions.xsl Squarespace-Wordpress-Export-12-12-2024.xml
xsltproc --output output/publications.html publications.xsl Squarespace-Wordpress-Export-12-12-2024.xml
xsltproc --output output/jobs.html jobs.xsl Squarespace-Wordpress-Export-12-12-2024.xml
xsltproc --output output/data.html data.xsl Squarespace-Wordpress-Export-12-12-2024.xml
xsltproc --output output/tools.html tools.xsl Squarespace-Wordpress-Export-12-12-2024.xml
xsltproc --output output/contact.html contact.xsl Squarespace-Wordpress-Export-12-12-2024.xml
xsltproc --output output/press.html press.xsl Squarespace-Wordpress-Export-12-12-2024.xml