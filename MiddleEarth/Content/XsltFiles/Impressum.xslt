<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

	<xsl:template match="/*">
    <span>
      Authors:
      <xsl:for-each select="Authors/Author">
        <span>
          <xsl:choose>
            <xsl:when test=".!='Florian'">
              <xsl:value-of select="."/>, 
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="."/>;
            </xsl:otherwise>
          </xsl:choose>
        </span>
    </xsl:for-each>
      <xsl:value-of select="Location/Country"/>, 
      <xsl:value-of select="Location/City"/>, 
      <xsl:value-of select="Contact/Telefon"/>, 
      <xsl:value-of select="Contact/EMail"/>
    </span>
	</xsl:template>
</xsl:stylesheet>
