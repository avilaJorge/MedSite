<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ddwrt2="urn:frontpage:internal">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:ghost=""
                  xmlns:ddwrt2="urn:frontpage:internal">
        <section class="jumbotron jumbotron-white">
            <div class="container">
                <div class="row" style="padding-bottom: 0">
                    <div class="col-md-12 text-center">
                        <h2>Publications</h2>
                        <p style="font-style: italic; padding-bottom: 0">*UC San Diego RMAS Department Members</p>
                    </div>
                </div>
                <div class="row" style="padding-top: 0">
                    <div id="pubs-web-app">
                        <xsl:apply-templates select="/dsQueryResponse/Rows/Row" />
                    </div>
                </div>
            </div>
        </section>
        <style>
        </style>
    </xsl:template>
    <xsl:template match="/dsQueryResponse/Rows/Row">
        <div class="row">
            <h4 class="accent">
                <a href="{@Link}" style="color: inherit; font-family: inherit; font-size: inherit; font-weight: inherit;">
                    <xsl:value-of select="@Title" />
                </a>
            </h4>
            <p style="padding: 0; margin-bottom: 10px"><xsl:value-of select="@Source" /></p>
            <p style="padding: 0; margin: 0"><xsl:value-of select="@Authors" /></p>
        </div>
    </xsl:template>
</xsl:stylesheet>