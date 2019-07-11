<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ddwrt2="urn:frontpage:internal">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:ghost=""
                  xmlns:ddwrt2="urn:frontpage:internal">
        <section class="jumbotron jumbotron-white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h2>NEWS</h2>
                    </div>
                </div>
                <div class="row">
                    <div id="news-web-app">
                        <xsl:apply-templates select="/dsQueryResponse/Rows/Row" />
                    </div>
                </div>
            </div>
        </section>
        <style>
        </style>
    </xsl:template>
    <xsl:template match="/dsQueryResponse/Rows/Row">
        <xsl:choose>
            <xsl:when test="string-length(@Image) &gt; 0">
                <section class="jumbotron jumbotron-grey jumbotron-full-height side-image no-margin">
                    <div class="image-container col-sm-3 col-sm-offset-9 col-md-5 col-md-offset-7 pull-right hidden-xs">
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
                            <div class="col-md-6 col-sm-8 side-image-content clearfix">
                                <xsl:choose>
                                    <xsl:when test="string-length(@Title) &gt; 0">
                                        <h2 class="link-title">
                                            <xsl:value-of select="@Title"/>
                                        </h2>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <h2 class="link-title">
                                            No title provided.  Please enter a title in news list.
                                        </h2>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <p><xsl:value-of select="@Content"/></p>
                                <a href="{@URL}" target="_blank">Learn More</a>
                            </div>
                        </div>
                    </div>
                </section>
            </xsl:when>
            <xsl:otherwise>
                <section class="jumbotron jumbotron-grey no-margin">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 text-center clearfix">
                                <xsl:choose>
                                    <xsl:when test="string-length(@Title) &gt; 0">
                                        <h2 class="link-title">
                                            <xsl:value-of select="@Title"/>
                                        </h2>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <h2 class="link-title">
                                            No title provided.  Please enter a title in news list.
                                        </h2>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <p><xsl:value-of select="@Content"/></p>
                                <a href="@{URL}" target="_blank">Learn More</a>
                            </div>
                        </div>
                    </div>
                </section>
            </xsl:otherwise>
        </xsl:choose>
        <br/>
    </xsl:template>
</xsl:stylesheet>