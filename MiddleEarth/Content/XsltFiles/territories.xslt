<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" >
	<xsl:variable name="popup-class">popup-</xsl:variable>
    <xsl:output method="xml" />
    <xsl:template match="/">
		<xsl:for-each select="/territories/territory">
			<xsl:variable name ="territoryName" select="name" />
			<xsl:variable name="id" select="concat($popup-class, translate($territoryName, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ ', 'abcdefghijklmnopqrstuvwxyz-'))"/>
			<div id="{$id}" class="modal">
				<div class="modal-content">
					<div class="close-button">
						<span style="display:none;">x</span>
					</div>
					<h2 class="popup-headline">
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

					<xsl:if test="landscape!=''">
						<p>
							<span>
								<b>Landschaft: </b>
								<xsl:value-of select="landscape"/>
							</span>
						</p>
					</xsl:if>

					<xsl:if test="city!=''">
						<div class="cities">
							<h3>Städte</h3>
							<ul>
								<xsl:for-each select="./city">
									<li>
										<xsl:value-of select="."/>
									</li>
									<!--<xsl:apply-templates select="/regions/region/city/>-->
								</xsl:for-each>
							</ul>
						</div>
					</xsl:if>

					<xsl:if test="river!=''">
						<div class="rivers">
							<h3>Flüsse</h3>
							<ul>
								<xsl:for-each select="./river">
									<li>
										<xsl:value-of select="."/>
									</li>
									<!--<xsl:apply-templates select="/regions/region/city/>-->
								</xsl:for-each>
							</ul>
						</div>
					</xsl:if>

					<xsl:if test="mountain!=''">
						<div class="mountains">
							<h3>Gebirge</h3>
							<ul>
								<xsl:for-each select="./mountain">
									<li>
										<xsl:value-of select="."/>
									</li>
									<!--<xsl:apply-templates select="/regions/region/city/>-->
								</xsl:for-each>
							</ul>
						</div>
					</xsl:if>

					<xsl:if test="forrest!=''">
						<div class="forrests">
							<h3>Wälder</h3>
							<ul>
								<xsl:for-each select="./forrest">
									<li>
										<xsl:value-of select="."/>
									</li>
									<!--<xsl:apply-templates select="/regions/region/city/>-->
								</xsl:for-each>
							</ul>
						</div>
					</xsl:if>

					<xsl:if test="fortress!=''">
						<div class="fortress">
							<h3>Festungen</h3>
							<ul>
								<xsl:for-each select="./fortress">
									<li>
										<xsl:value-of select="."/>
									</li>
									<!--<xsl:apply-templates select="/regions/region/city/>-->
								</xsl:for-each>
							</ul>
						</div>
					</xsl:if>

					<!--popup's close button-->
					<span class="close"></span>
				</div>
			</div>
		</xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
