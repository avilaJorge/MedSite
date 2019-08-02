<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ddwrt2="urn:frontpage:internal">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:ghost="" xmlns:ddwrt2="urn:frontpage:internal">
        <style>
            .square {
            margin: 0 15px 15px 0;
            overflow-x: hidden;
            overflow-y: hidden;
            padding: 1rem;
            height: 250px;
            width: 281px;
            }
            .year {
            padding: 3rem;
            }
        </style>
        <section class="jumbotron jumbotron-white no-padding">
            <div class="container" style="padding-right: 0px;">
                <div class="row">
                    <xsl:apply-templates select="/dsQueryResponse/Rows/Row" />
                </div>
            </div>
        </section>
        <script type="text/javascript"></script>
    </xsl:template>
    <xsl:template match="/dsQueryResponse/Rows/Row">
                <xsl:choose>
                    <xsl:when test="@SquareType = 'Year'">
                        <xsl:if test="string-length(@Content) &gt; 0">
                            <div class="thumbnail square col-md-3 year medbluebackground">
                                <h1 class="white-text">
                                    <xsl:value-of select="@Content" disable-output-escaping="yes" />
                                </h1>
                            </div>
                        </xsl:if>
                    </xsl:when>
                    <xsl:when test="@SquareType = 'Image'">
                        <xsl:if test="string-length(@ImageLink) &gt; 0">
                            <div class="thumbnail square col-md-3" style='background-image: url("{@ImageLink}"); background-position: center; background-size: cover;'>
                            </div>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:if test="string-length(@Content) &gt; 0">
                            <div class="thumbnail square col-md-3">
                                <p>
                                    <xsl:value-of select="@Content" disable-output-escaping="yes"/>
                                </p>
                            </div>
                        </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
    </xsl:template>
</xsl:stylesheet>