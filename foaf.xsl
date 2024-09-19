<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foaf="http://xmlns.com/foaf/0.1/">
  <xsl:output method="html" indent="yes"/>

  <!-- Template for the root element -->
  <xsl:template match="/">
    <html>
      <head>
        <title>FOAF Profile</title>
      </head>
      <body>
        <h1>FOAF Profile</h1>
        <xsl:apply-templates select="//foaf:Person"/>
      </body>
    </html>
  </xsl:template>

  <!-- Template for foaf:Person elements -->
  <xsl:template match="foaf:Person">
    <div>
      <h2><xsl:value-of select="foaf:name"/></h2>
      <p><strong>Homepage:</strong> <a href="{foaf:homepage}"><xsl:value-of select="foaf:homepage"/></a></p>
      <p><strong>Knows:</strong></p>
      <ul>
        <xsl:for-each select="foaf:knows/foaf:Person">
          <li><xsl:value-of select="foaf:name"/></li>
        </xsl:for-each>
      </ul>
    </div>
  </xsl:template>
</xsl:stylesheet>