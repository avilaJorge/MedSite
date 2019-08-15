<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ddwrt2="urn:frontpage:internal">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:ghost="" xmlns:ddwrt2="urn:frontpage:internal">
        <section class="jumbotron jumbotron-white backgroundImageSection-threeBoxes hover-light" style="padding-top: 1rem;">
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
                <xsl:if test="(last() - position()) = 1">
                    <div class="col-sm-2 no-gutter">&#160;</div>
                </xsl:if>
            </xsl:if>
            <div class="col-sm-4 no-gutter">
                <div class="thumbnail">
                    <img class="img-responsive" alt="ALT TEXT HERE" src="{@Image}" />
                    <div class="caption">
                        <h3><xsl:value-of select="@FirstName"/>&#160;<xsl:value-of select="@LastName"/>
                            <xsl:if test="string-length(@Title) &gt; 0">,&#160;<xsl:value-of select="@Title"/></xsl:if></h3>
                        <xsl:if test="string-length(@Info) &gt; 0">
                            <p><xsl:value-of disable-output-escaping="yes" select="@Info"/></p>
                        </xsl:if>
                    </div>
                </div>
            </div>
            <xsl:if test="position() mod 3 = 0 or position() = last()">
                <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
            </xsl:if>
    </xsl:template>
</xsl:stylesheet>