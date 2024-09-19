<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:foaf="http://xmlns.com/foaf/0.1/"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="//foaf:title"/></title>
      </head>
      <body>
        <h1>FOAF Profile</h1>

        <div>
          <h2>
            <xsl:value-of select="//foaf:name"/>
          </h2>
          <p>
            <strong>Homepage:</strong>
            <a href="{foaf:homepage/@rdf:resource}">Ma page</a>
          </p>
          <p>
            <strong>Knows:</strong>
          </p>
          <ul>
            <xsl:for-each select="//foaf:knows/foaf:Person">
              <li>
                <a href="{foaf:homepage/@rdf:resource}" target="_blank">
                  <xsl:value-of select="foaf:name"/>
                </a>
              </li>
            </xsl:for-each>
          </ul>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>