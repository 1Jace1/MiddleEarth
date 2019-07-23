<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" >
	<xsl:output method="xml" />
	<xsl:variable name="popup-class">popup-</xsl:variable>
	<xsl:template match="/*">
		<xsl:for-each select="/regions/region">
			<xsl:variable name ="regionName" select="name" />
			<xsl:variable name="test" select="concat($popup-class, translate($regionName, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))"/>
			<!--<xsl:attribute name="Id">
				<xsl:value-of select="translate($popup-class, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz')"/>
			</xsl:attribute>-->
			<!--Creates the popup body-->
			<div id="{$test}" class="modal">
				<!--Creates the popup content-->
				<div class="modal-content">
					<h2>
						<xsl:value-of select="name"/>
					</h2>
					<p>
						<xsl:value-of select="info"/>
					</p>
					<p>
						<span>
							<b>Bevölkerung: </b>
							<xsl:value-of select="pop"/>
						</span>
					</p>
					<p>
						<span>
							<b>Landschaft: </b>
							<xsl:value-of select="landscape"/>
						</span>
					</p>
					<xsl:if test="territory!=''">
					<ul>
						
						<h3>Regionen</h3>
						<xsl:for-each select="./territory">
							
							<li>
								<xsl:value-of select="."/>
							</li>
							
							<!--<xsl:apply-templates select="/regions/region/city/>-->
						</xsl:for-each>
					</ul>
					</xsl:if>
					<xsl:if test="city!=''">
						<ul>
							<h3>Städte</h3>
							<xsl:for-each select="./city">
								<li>
									<xsl:value-of select="."/>
								</li>
								<!--<xsl:apply-templates select="/regions/region/city/>-->
							</xsl:for-each>
						</ul>
					</xsl:if>
					<!--<xsl:value-of select="river"/>
					<xsl:value-of select="mountain"/>
					<xsl:value-of select="specials"/>
					<xsl:value-of select="forrest"/>
					<xsl:value-of select="fortress"/>-->

					<!--popup's close button-->
					<span class="close"></span>
					<p>Some text in the Modal..</p>
				</div>
			</div>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
