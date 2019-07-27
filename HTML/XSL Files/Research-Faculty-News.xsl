<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ddwrt2="urn:frontpage:internal">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:ghost="" xmlns:ddwrt2="urn:frontpage:internal">
        <xsl:apply-templates select="/dsQueryResponse/Rows/Row" />
        <script type="text/javascript"></script>
        <style></style>
    </xsl:template>
    <xsl:template match="/dsQueryResponse/Rows/Row">
		<p class="no-margin">
			<xsl:value-of disable-output-escaping="yes" select="@News"/>
		</p>
    </xsl:template>
</xsl:stylesheet>