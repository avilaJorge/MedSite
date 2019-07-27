<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ddwrt2="urn:frontpage:internal">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:ghost="" xmlns:ddwrt2="urn:frontpage:internal">
        <section class="jumbotron jumbotron-white backgroundImageSection-threeBoxes hover-light">
            <div class="container">
                <table>
                    <xsl:apply-templates select="/dsQueryResponse/Rows/Row" />
                </table>
            </div>
        </section>
        <script type="text/javascript"></script>
        <style></style>
    </xsl:template>
    <xsl:template match="/dsQueryResponse/Rows/Row">
        <xsl:if test="position() mod 3 = 1">
            <xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
            <xsl:text disable-output-escaping="yes">&lt;div class="col-md-12"&gt;</xsl:text>
            <xsl:text disable-output-escaping="yes">&lt;div class="triple-hover-box-panel"&gt;</xsl:text>
            <xsl:text disable-output-escaping="yes">&lt;div class="panel-content panel-hover-boxes"&gt;</xsl:text>
            <xsl:text disable-output-escaping="yes">&lt;div class="hover-boxes row clearfix"&gt;</xsl:text>
        </xsl:if>
                                <div class="hover-box col-md-4">
                                    <div class="hover-box-item hover-box-col">
                                        <div class="hover-box-wrapper hover-box-text">
                                            <div class="hover-box-image">
                                                <img src="{@Photo}" alt="" />
                                            </div>
                                            <div class="hover-box-content hover-color">
                                                <div class="hover-intro-wrapper">
                                                    <div class="hover-intro">
                                                        <h3 class="hover-box-title"><xsl:value-of select="@FirstName"/>&#160;<xsl:value-of select="@LastName"/>
                                                            <xsl:if test="string-length(@Title) &gt; 0">,&#160;<xsl:value-of select="@Title"/></xsl:if></h3>
                                                    </div>
                                                </div>
                                                <div class="hover-expanded-text">
                                                    <h3 class="hover-box-title"><xsl:value-of select="@FirstName"/>&#160;<xsl:value-of select="@LastName"/>,&#160;<xsl:value-of select="@Title"/></h3>
                                                    <a class="continue-link" href="{@ProfileLink}"></a>
                                                    <br />
                                                </div>
                                                <a class="hover-box-link no-external-link" href="{@ProfileLink}">
                                                    <span class="sr-text"></span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
        <xsl:if test="position() mod 3 = 0 or position() = last()">
            <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
            <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
            <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
            <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
            <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>