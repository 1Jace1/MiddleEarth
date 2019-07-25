<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" >
	<xsl:variable name="popup-class">popup-</xsl:variable>
	<xsl:output method="xml" />
	<xsl:template match="/">
		<xsl:for-each select="/cities/city">
			<xsl:variable name ="cityName" select="name" />
			<xsl:variable name="id" select="concat($popup-class, translate($cityName, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ ', 'abcdefghijklmnopqrstuvwxyz-'))"/>
			<div id="{$id}" class="modal">
				<div class="modal-content">
					<div class="close-button"><span style="display:none;">x</span></div>
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
							<b>Einwohner: </b>
						</span>
						<xsl:value-of select="pop"/>
					</p>
					<xsl:if test="laguages!=''">
						<p>
							<span>
								<b>Sprachen: </b>
							</span>
							<xsl:value-of select="laguages"/>
						</p>
					</xsl:if>
					<xsl:if test="sights!=''">
						<p>
							<span>
								<b>Sehenswürdigkeiten: </b>
							</span>
							<xsl:value-of select="sights"/>
						</p>
					</xsl:if>
				</div>
			</div>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
