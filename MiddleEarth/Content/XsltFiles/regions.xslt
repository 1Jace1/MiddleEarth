<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" >
	<xsl:output method="xml" />
	<xsl:variable name="popup-class">popup-</xsl:variable>
	<xsl:template match="/*">
		<xsl:for-each select="/regions/region">
			<xsl:variable name ="regionName" select="name" />
			<xsl:variable name="test" select="concat($popup-class, translate($regionName, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))"/>
			<div id="{$test}" class="modal">
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
					
					<xsl:if test="landscape!=''">
						<p>
							<span>
								<b>Landschaft: </b>
								<xsl:value-of select="landscape"/>
							</span>
						</p>
					</xsl:if>
					
					<xsl:if test="territory!=''">
						<div class="territories">
							<h3>Regionen</h3>
							<ul>
								<xsl:for-each select="./territory">

									<li>
										<xsl:value-of select="."/>
									</li>

									<!--<xsl:apply-templates select="/regions/region/city/>-->
								</xsl:for-each>
							</ul>
						</div>
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

					<xsl:if test="specials!=''">
						<div>
							<h3>Besonderheiten</h3>
							<p>
								<xsl:value-of select="specials"/>
							</p>
						</div>
					</xsl:if>

					<!--popup's close button-->
					<span class="close"></span>
				</div>
			</div>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
