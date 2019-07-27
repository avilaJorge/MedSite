<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ddwrt2="urn:frontpage:internal">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:ghost="" xmlns:ddwrt2="urn:frontpage:internal">
        <section class="jumbotron jumbotron-white backgroundImageSection-threeBoxes" style="padding-bottom: 0; padding-top: 0">
            <div class="container">
                <xsl:apply-templates select="/dsQueryResponse/Rows/Row" />
            </div>
        </section>
        <script type="text/javascript"></script>
        <style></style>
    </xsl:template>
    <xsl:template match="/dsQueryResponse/Rows/Row">
        <xsl:if test="position() mod 3 = 1">
            <xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
        </xsl:if>
            <div class="col-sm-4 no-gutter">
                <div class="thumbnail">
					<xsl:choose>
						<xsl:when test="string-length(@Link) &gt; 0">
							<a href="{@Link}"><img class="img-responsive" alt="ALT TEXT HERE" src="{@Image}" /></a>
						</xsl:when>
						<xsl:otherwise>
							<img class="img-responsive" alt="ALT TEXT HERE" src="{@Image}" />
						</xsl:otherwise>
					</xsl:choose>
                    <div class="caption">
						<xsl:choose>
							<xsl:when test="string-length(@Link) &gt; 0">
								<a href="{@Link}"><h3><xsl:value-of select="@Title"/></h3></a>
								</xsl:when>
							<xsl:otherwise>
								<h3><xsl:value-of select="@Title"/></h3>
							</xsl:otherwise>
						</xsl:choose>
                        <xsl:if test="string-length(@Info) &gt; 0">
                            <p><xsl:value-of select="@Info"/></p>
                        </xsl:if>
                    </div>
                </div>
            </div>
        <xsl:if test="position() mod 3 = 0 or position() = last()">
            <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>