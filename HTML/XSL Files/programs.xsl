<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ddwrt2="urn:frontpage:internal">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:ghost="" xmlns:ddwrt2="urn:frontpage:internal">
        <section class="jumbotron jumbotron-white backgroundImageSection-threeBoxes">
            <div class="container">
                <table>
                    <xsl:apply-templates select="/dsQueryResponse/Rows/Row" />
                </table>
            </div>
        </section>
        <script type="text/javascript"></script>
        <style>
			.hover-jbox:hover .container, .hover-jbox:focus .container {
				-ms-transform: scale(1.1);
				-moz-transform: scale(1.1);
				-webkit-transform: scale(1.1);
				-o-transform: scale(1.1);
				transform: scale(1.1);
			}
			.hover-jbox {
				overflow: hidden;
			}
			.hover-jbox p {
				padding-bottom: 0;
			}
			.thumbnail {
				overflow: hidden;
			}
			.hover-jbox .container {
				height: 100%;
				width: 100%;
				background-size: cover;
				background-repeat: no-repeat;
				-webkit-transition: all .5s;
				-moz-transition: all .5s;
				-o-transition: all .5s;
				transition: all .5s;
			}
		</style>
    </xsl:template>
    <xsl:template match="/dsQueryResponse/Rows/Row">
        <xsl:if test="position() mod 3 = 1">
            <xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
        </xsl:if>
				<div class="col-sm-4 no-gutter text-center">
					<div class="thumbnail hover-jbox">
						<div class="container"
								style='background-position: center; background-image: url("{@Image}"); background-size: cover;'>
							<div class="row">
								<div class="white-overlay padding-top-24 padding-bottom-24" style="background-color: rgba(255, 255, 255, 0.85);">
									<h3><xsl:value-of disable-output-escaping="yes" select="@Title"/></h3>
									<p>
										<xsl:value-of disable-output-escaping="yes" select="@Projects"/>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
        <xsl:if test="position() mod 3 = 0 or position() = last()">
            <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>