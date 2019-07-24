<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

	<xsl:template match="/*">
    <span>
      <h1 class="title">Impressum</h1>
      <h2 class="heading">Angaben gemäß § 5 TMG</h2>
      <xsl:for-each select="Authors/Author">
        <span class="normal">
          <xsl:choose>
            <xsl:when test=".!='Florian'">
              <xsl:value-of select="."/>,   
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="."/>
              <br/>
            </xsl:otherwise>
          </xsl:choose>
        </span>
    </xsl:for-each>
      <span class="normal">
        <xsl:value-of select="Location/Street"/>
        <br/>
        <xsl:value-of select="Location/Country"/>
        <br/>
        <xsl:value-of select="Location/City"/>
        <br/>
      </span>
      <h2 class="heading">Kontakt</h2>
      <span class="normal">
        Telefon: <xsl:value-of select="Contact/Telefon"/><br/>
        Email:
        <a href="mailto:{Contact/EMail}">
          <xsl:value-of select="Contact/EMail"/>
        </a>
      </span>
      <br/>
      <br/>
      <span>
        Oder kontaktieren sie uns <a href="#" class="contact-form">hier</a> über unser Kontaktformular.
      </span>
      <h3 class="smallHeading">HAFTUNG FÜR INHALTE</h3>
      <span class="liability">
        <xsl:value-of select="Haftung/Inhalte"/>
      </span>
      <h3 class="smallHeading">HAFTUNG FÜR LINKS</h3>
      <span class="liability">
        <xsl:value-of select="Haftung/Links"/>
      </span>
      <h3 class="smallHeading">URHEBERRECHT</h3>
      <span class="liability">
        <xsl:value-of select="Haftung/Urheberrecht"/>
      </span>
      <div id="contact-popup" class="modal">
        <div class="modal-content">
          <form>
            <button class="close-button">X</button>
            <p>Adresse:</p>
            <input type="text" size="75%" class="inputadress" placeholder="Ihre Email" required=""></input>
            <br/>
            <br/>
            <p>Name:</p>
            <input type="text" size="75%" class="inputadress" placeholder="Ihr Name" required=""></input>
            <br/>
            <br/>
            <textarea rows="4" cols="50" placeholder="Ihre Anfrage" required="">Ihre Anfrage</textarea>
            <br/>
            <br/>
            <input type="submit" value="Absenden!" class="button"></input>
          </form>
        </div>
      </div>
    </span>
	</xsl:template>
</xsl:stylesheet>
