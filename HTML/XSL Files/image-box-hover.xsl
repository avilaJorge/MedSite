<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ddwrt2="urn:frontpage:internal">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:ghost="" xmlns:ddwrt2="urn:frontpage:internal">
        <div class="triple-hover-box-panel">
            <div class="panel-content panel-hover-boxes">
                <div class="hover-boxes row clearfix">
                    <xsl:apply-templates select="/dsQueryResponse/Rows/Row" />
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function() {
                var boxes = $(".hover-box");
                var numOfBoxes = boxes.length;
                switch(numOfBoxes) {
                    case 2:
                        var colSize = "col-md-6";
                        break;
                    case 3:
                        var colSize = "col-md-4";
                        break;
                    case 4:
                        var colSize = "col-md-3";
                        break;
                    default:
                        var colSize = "col-md-4";
                }
                boxes.each(function() {
                    $(this).addClass(colSize);
                });
            });
        </script>
    </xsl:template>
    <xsl:template match="/dsQueryResponse/Rows/Row">
        <div class="hover-box">
            <div class="hover-box-item hover-box-col">
                <div class="hover-box-wrapper hover-box-text">
                    <div class="hover-box-image" style="background-image: url('{@FileRef}')"></div>
                    <div class="hover-box-content hover-color">
                         <div class="hover-intro-wrapper">
                            <div class="hover-intro">
                                <h3 class="hover-box-title">
                                    <xsl:value-of select="@Title" />
                                </h3>
                            </div>
                        </div>
                        
                        <div class="hover-expanded-text">
                            <h3 class="hover-box-title">
                               <xsl:value-of select="@Title" />
                            </h3>
                            <a class="continue-link" href="{@Item_x0020_Link}">
                                <xsl:if test="@New_x0020_Window ='Yes'">
                                    <xsl:attribute name="target">_blank</xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="@Description" />
                            </a>
                        </div>
                        <a class="hover-box-link no-external-link" href="{@Item_x0020_Link}">
                            <xsl:if test="@New_x0020_Window ='Yes'">
                                <xsl:attribute name="target">_blank</xsl:attribute>
                            </xsl:if>
                            <span class="sr-text"><xsl:value-of select="@Screen_x0020_Reader_x0020_Text" /></span> 
                        </a>
                    </div>
                </div> 
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>