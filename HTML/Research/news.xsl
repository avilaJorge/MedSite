<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ddwrt2="urn:frontpage:internal">
<xsl:output method="html" indent="yes" />
<xsl:template match="/" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:ghost=""
              xmlns:ddwrt2="urn:frontpage:internal">
    <div class="no-margin no-padding">
        <div class="row no-margin no-padding text-center">
           <h1 id="PubHeading" >Research News</h1>
        </div>
        <div class="row" style="padding-top: 0; padding-bottom: 0">
            <ul id="pubs-web-app" style="margin-bottom: 0">
                <xsl:apply-templates select="/dsQueryResponse/Rows/Row" />
            </ul>
        </div>
    </div>
</xsl:template>
<xsl:template match="/dsQueryResponse/Rows/Row">
    <li id="PubItem">
        <u><xsl:value-of select="@NewsTitle" disable-output-escaping="yes"/></u>
    </li>
</xsl:template>
</xsl:stylesheet>