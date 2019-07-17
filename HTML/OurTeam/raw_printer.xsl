<xsl:stylesheet version="1.0" exclude-result-prefixes="x d xsl msxsl cmswrt" xmlns:x="http://www.w3.org/2001/XMLSchema" xmlns:d="http://schemas.microsoft.com/sharepoint/dsp" xmlns:cmswrt="http://schemas.microsoft.com/WebParts/v3/Publishing/runtime" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt">

    <xsl:template match="/">

        <textarea rows="20" cols="100">

            <xsl:apply-templates/>

        </textarea>


    </xsl:template>

    <xsl:template match="node()|@*">

        <!-- Copy the current node -->

        <xsl:copy>

            <!-- Including any child nodes it has and any attributes -->

            <xsl:apply-templates select="node()|@*"/>

        </xsl:copy>

    </xsl:template>


</xsl:stylesheet>
