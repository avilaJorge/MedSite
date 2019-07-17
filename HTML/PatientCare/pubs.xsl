<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ddwrt2="urn:frontpage:internal">
<xsl:output method="html" indent="yes" />
<xsl:template match="/" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:ghost=""
              xmlns:ddwrt2="urn:frontpage:internal">
    <div class="" style="color: inherit">
        <div class="row" style="padding-bottom: 0">
            <div class="text-center" id="PubHeading">
                Publications
            </div>
        </div>
        <div class="row" style="padding-top: 0; padding-bottom: 0">
            <ul id="pubs-web-app" style="margin-bottom: 0">
                <xsl:apply-templates select="/dsQueryResponse/Rows/Row" />
            </ul>
        </div>
    </div>
</xsl:template>
<xsl:template match="/dsQueryResponse/Rows/Row">
    <xsl:choose>
       <xsl:when test="string-length(@Link) &gt; 0">
           <li id="PubItem">
               <a href="{@Link}" style="color: inherit; font-family: inherit; font-size: inherit; font-weight: inherit;">
                   <xsl:value-of select="@Title" />
               </a>
           </li>
       </xsl:when>
        <xsl:otherwise>
            <li id="PubItem">
               <u><xsl:value-of select="@Title"/></u>
            </li>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
</xsl:stylesheet>