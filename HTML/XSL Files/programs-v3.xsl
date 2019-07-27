<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ddwrt2="urn:frontpage:internal">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:ghost="" xmlns:ddwrt2="urn:frontpage:internal">
        <xsl:apply-templates select="/dsQueryResponse/Rows/Row" />
    </xsl:template>
    <xsl:template match="/dsQueryResponse/Rows/Row">
        <xsl:choose>
            <xsl:when test="position() mod 2 = 1">
                <section class="jumbotron jumbotron-white jumbotron-full-height side-image no-margin">
                    <div class="image-container col-sm-4 col-sm-offset-8 col-md-6 col-md-offset-6 pull-right hidden-xs">
                        <div class="background-image-holder">
                            <img src="{@Image}" alt="" />
                        </div>
                    </div>
                    <div class="image-container-mobile visible-xs">
                        <div class="background-image-holder">&#160;
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-sm-8 side-image-content clearfix text-center">
                                <h1><xsl:value-of select="@Title"/></h1>
                                <p><xsl:value-of disable-output-escaping="yes" select="@Projects"/></p>
                            </div>
                        </div>
                    </div>
                </section>
            </xsl:when>
            <xsl:otherwise>
                <section class="jumbotron jumbotron-white jumbotron-full-height side-image no-margin">
                    <div class="image-container col-sm-4 col-md-6 pull-left hidden-xs">
                        <div class="background-image-holder">
                            <img src="{@Image}" alt="" />
                        </div>
                    </div>
                    <div class="image-container-mobile visible-xs">
                        <div class="background-image-holder">&#160;
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-sm-8 col-sm-offset-5 col-md-offset-6 side-image-content clearfix text-center">
                                <h1><xsl:value-of select="@Title"/></h1>
                                <p><xsl:value-of disable-output-escaping="yes" select="@Projects"/></p>
                            </div>
                        </div>
                    </div>
                </section>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:if test="not(position() = last())">
            <br/>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>