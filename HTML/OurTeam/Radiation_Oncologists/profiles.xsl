<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ddwrt2="urn:frontpage:internal">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:ghost="" xmlns:ddwrt2="urn:frontpage:internal">
        <section class="jumbotron jumbotron-grey backgroundImageSection-threeBoxes">
            <div class="container">
                <xsl:apply-templates select="/dsQueryResponse/Rows/Row" />
            </div>
        </section>

        <script type="text/javascript"></script>
        <style></style>
    </xsl:template>
    <xsl:template match="/dsQueryResponse/Rows/Row">
        <div class="row">
            <div class="col-md-12">
                <div class="triple-hover-box-panel">
                    <div class="panel-content panel-hover-boxes">
                        <div class="hover-boxes row clearfix">
                            <div class="hover-box col-md-4">
                                <div class="hover-box-item hover-box-col">
                                    <div class="hover-box-wrapper hover-box-text">
                                        <div class="hover-box-image">
                                            <img src="{@Photo}" alt=""/>
                                        </div>
                                        <div class="hover-box-content ">
                                            <div class="hover-intro-wrapper">
                                                <div class="hover-intro">
                                                    <h3 class="hover-box-title"><xsl:value-of select="@First_x0020_Name"/>&#160;<xsl:value-of select="@Last_x0020_Name"/>,&#160;<xsl:value-of select="@Title"/></h3>
                                                </div>
                                            </div>
                                            <div class="hover-expanded-text">
                                                <h3 class="hover-box-title"><xsl:value-of select="@First_x0020_Name"/>&#160;<xsl:value-of select="@Last_x0020_Name"/>,&#160;<xsl:value-of select="@Title"/></h3>
                                                <a title="Profile" class="continue-link" href="{@ProfileLink}"> </a>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</div>
                                            <a title="Profile" class="continue-link" href="{@ProfileLink}"></a><a title="Profile" class="hover-box-link" href="{@ProfileLink}"><span class="sr-text"> </span> </a> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>