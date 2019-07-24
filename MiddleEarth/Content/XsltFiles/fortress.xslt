<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" >
    <xsl:output method="xml"/>
	<xsl:variable name="popup-class">popup-</xsl:variable>
    <xsl:template match="/">
		<xsl:for-each select="/fortresses/fortress">
			<xsl:variable name ="fortressName" select="name" />
			<xsl:variable name="id" select="concat($popup-class, translate($fortressName, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ ', 'abcdefghijklmnopqrstuvwxyz-'))"/>
			<div id="{$id}" class="modal">
				<div class="modal-content">
					<h2 class="popup-headline">
						<xsl:value-of select="name"/>
					</h2>
					<p>
						<span>
							<b>Beschreibung: </b>
						</span>
						<xsl:value-of select="info"/>
					</p>
					<p>
						<span>
							<b>Bevölkerung: </b>
						</span>
						<xsl:value-of select="pop"/>
					</p>
					<p>
						<span>
							<b>Sehenswürdigkeiten: </b>
						</span>
						<xsl:value-of select="sights"/>
					</p>
				</div>
			</div>
		</xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
