<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ddwrt2="urn:frontpage:internal">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:ghost=""
        xmlns:ddwrt2="urn:frontpage:internal">
        <div class="container no-padding">
            <div class="row no-padding">
                <div class="rotator-web-part no-padding">
                    <xsl:apply-templates select="/dsQueryResponse/Rows/Row" />
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $(document).ready(
                function () {
                    $('.rotator-web-part').slick({
                        lazyLoad: 'ondemand',
                        mobileFirst: true,
                        infinite: true,
                        dots: true,
                        arrows: true
                    });
                }
            );
            $(window).on( "load", function() { 
                $(".hero-rotator-webpart").css("display", "block");
            })
        </script>
        <style>
            .hero-rotator-webpart {
                background-color: #f2f2f2;
                display: none;
            }
            .s4-wpcell>.ms-webpart-chrome,
            .s4-wpActive>.ms-webpart-chrome {
                border: 0px !important;
            }
            .rotator-web-part .slick-track {
                background-color: #182b49;
            }
            .rotator-web-part button.slick-arrow {
                position: absolute;
                bottom: 5%;
                transform: translateY(50%);
                z-index: 5000;
            }

            .rotator-web-part button.slick-prev {
                right: 25%;
                transform: translateX(50%);
                border: 4px solid #FFF;
                height: 50px;
                width: 50px;
                border-radius: 50%;
                color: #FFF;
                outline: none;
                background: transparent;
                z-index: 5;
                font-size: 0;
                left: auto;
                top: auto;
            }

            .rotator-web-part button.slick-prev:before {
                content: "\f053";
                text-indent: -2px;

                font-family: "FontAwesome";
                color: #FFF;
                font-size: 20px;
                opacity: 1;
                line-height: 43px;
                display: block;
                -webkit-font-smoothing: antialiased;
            }

            .rotator-web-part button.slick-next {
                right: 10%;
                transform: translateX(50%);
                border: 4px solid #FFF;
                height: 50px;
                width: 50px;
                border-radius: 50%;
                color: #FFF;
                outline: none;
                background: transparent;
                z-index: 5;
                font-size: 0;
                top: auto;
            }

            .rotator-web-part button.slick-next:before {
                content: "\f054";
                text-indent: 2px;

                font-family: "FontAwesome";
                color: #FFF;
                font-size: 20px;
                opacity: 1;
                line-height: 43px;
                display: block;
                -webkit-font-smoothing: antialiased;
            }
            .rotator-left {
                min-height: 340px;
            }
            .rotator-right {
                background-color: #182b49;
                padding: 25px;
                min-height: 340px;
            }
            .caption-content {
                margin: 20px;
                font-family: 'Univers', sans-serif;
            }

            .rotator-link {
                margin-left: 20px;
            }
            .rotator-centered-text {
                text-align: center;
            }
            .rotator-link-text {
                color: #fff !important;
                border: 1px solid white;
                background-color: transparent !important;
            }
            .rotator-link-text:hover, .rotator-link-text:focus {
                color: #182b49 !important;
                border: 1px solid #fff;
                background-color: #fff !important;
            }
            .rotator-flex-wrapper {
                display: flex;
            }
            .rotator-flex-container {
                display: flex;
                justify-content: center;
                align-items: center; 
                min-height: 290px;
                text-align: center;
                margin: auto;
            }
            .headline-content {
                font-size: 30px !important;
                margin-left: 20px;
            }

            .slick-dots {
                display: none !important;
                padding: 0;
                margin: 0;
                position: absolute;
                bottom: 0;
                right: 3%;
                list-style-image: none !important;
                width: auto; 
            }
            .slick-dots li:before {
                content: none !important;
            }
            .slick-dots li button
            {
                font-size: 0px;
                line-height: 20px;
                display: block;
                cursor: pointer;
                color: #ffffff;
                border: 0;
                outline: none;
                background: transparent;
            }
            .slick-dots li button:hover,
            .slick-dots li button:focus
            {
                outline: none;
            }
            .slick-dots li button:hover:before,
            .slick-dots li button:focus:before
            {
                opacity: 1;
            }
            .slick-dots li button:before
            {
                font-family: 'UniversLight';
                font-size: 33px;
                line-height: 20px;
                width: 20px;
                height: 20px;
                content: '•';
                text-align: center;
                opacity: .25;
                color: #fdfdfd;
                -webkit-font-smoothing: antialiased;
                -moz-osx-font-smoothing: grayscale;
            }
            .slick-dots li.slick-active button:before
            {
                opacity: .75;
                color: #ffffff;
            }
            @media screen and (min-width: 1200px) {
                .slick-dots {
                    display: inline-flex !important;
                }
                .headline-content {
                    width: 70%;
                }
                .rotator-flex-container .headline-margin {
                    margin-top: 25px !important;
                }
                .rotator-flex-container .headline-content {
                    width: 100%;
                    margin: auto;
                }
                .rotator-flex-container .rotator-link {
                    margin: 20px;
                }
                .rotator-left, .rotator-right {

                }
                .rotator-web-part button.slick-arrow {
                    top: 10%
                }
                .rotator-web-part button.slick-next {
                    right: 5%;
                }
                .rotator-web-part button.slick-prev {
                    right: 10%;
                }
                .rotator-web-part .caption-no-heading .caption-content {
                    margin-top: 70px;
                }
            }
        </style>
    </xsl:template>
    <xsl:template match="/dsQueryResponse/Rows/Row">
        <div class="thediv">
            <div class="col-lg-6 no-padding rotator-left">
                <xsl:attribute name="style">background: no-repeat center url('<xsl:value-of select="@FileRef" disable-output-escaping="yes" />'); background-size: cover;</xsl:attribute>
            </div>
            <div class="col-lg-6 rotator-right white-text">
                <xsl:choose>
                    <!-- when headline and link and caption are present -->
                    <xsl:when test="string-length(@Headline) &gt; 0 and string-length(@SlideLink) &gt; 0 and string-length(@Caption) &gt; 0">
                        <xsl:if test="string-length(@Headline) &gt; 0">
                            <div class="headline-content">
                                <xsl:value-of select="@Headline" disable-output-escaping="yes" />
                            </div>
                        </xsl:if>
                        <xsl:if test="string-length(@Caption) &gt; 0">
                            <div class="caption-content">
                                <p>
                                    <xsl:value-of select="@Caption" disable-output-escaping="yes" />
                                </p>
                            </div>
                        </xsl:if>
                        <div class="rotator-link">
                            <a href="{@SlideLink}" class="rotator-link-text btn btn-primary btn-md">
                                <xsl:if test="@NewWindow = 1">
                                    <xsl:attribute name="target">_blank</xsl:attribute>
                                </xsl:if>
                                <xsl:if test="string-length(@TextForLink) &gt; 0">
                                    <xsl:value-of select="@TextForLink" disable-output-escaping="yes" />
                                </xsl:if>
                            </a>
                        </div>
                    </xsl:when>
                    <!-- when no headline-->
                    <xsl:when test="string-length(@Headline) &lt; 1">
                        <div class="caption-no-heading">
                            <xsl:if test="string-length(@Caption) &gt; 0">
                                <div class="caption-content">
                                    <p>
                                        <xsl:value-of select="@Caption" disable-output-escaping="yes" />
                                    </p>
                                </div>
                            </xsl:if>
                            <xsl:if test="string-length(@SlideLink) &gt; 0">
                                <div class="rotator-link">
                                    <a href="{@SlideLink}" class="rotator-link-text btn btn-primary btn-md">
                                        <xsl:if test="@NewWindow = 1">
                                            <xsl:attribute name="target">_blank</xsl:attribute>
                                        </xsl:if>
                                        <xsl:if test="string-length(@TextForLink) &gt; 0">
                                            <xsl:value-of select="@TextForLink" disable-output-escaping="yes" />
                                        </xsl:if>
                                    </a>
                                </div>
                            </xsl:if>
                        </div>
                    </xsl:when>
                    <!-- when headline and link is present but no caption -->
                    <xsl:when test="string-length(@Headline) &gt; 0 and string-length(@Caption) &lt; 1 and string-length(@SlideLink) &gt; 0">
                        <div class="rotator-flex-wrapper">
                            <div class="rotator-flex-container">
                                <div class="rotator-flex-content">
                                    <xsl:if test="string-length(@Headline) &gt; 0">
                                        <div class="headline-content headline-and-button rotator-centered-text headline-margin">
                                            <xsl:value-of select="@Headline" disable-output-escaping="yes" />
                                        </div>
                                    </xsl:if>
                                    <xsl:if test="string-length(@SlideLink) &gt; 0">
                                        <div class="rotator-link">
                                            <a href="{@SlideLink}" class="rotator-link-text btn btn-primary btn-md">
                                                <xsl:if test="@NewWindow = 1">
                                                    <xsl:attribute name="target">_blank</xsl:attribute>
                                                </xsl:if>
                                                <xsl:if test="string-length(@TextForLink) &gt; 0">
                                                    <xsl:value-of select="@TextForLink" disable-output-escaping="yes" />
                                                </xsl:if>
                                            </a>
                                        </div>
                                    </xsl:if>
                                </div>
                            </div>
                        </div>
                    </xsl:when>
                    <!-- when headline only -->
                    <xsl:when test="string-length(@Headline) &gt; 0 and string-length(@Caption) &lt; 1 and string-length(@SlideLink) &lt; 1">
                        <div class="rotator-flex-wrapper">
                            <div class="rotator-flex-container">
                                <div class="rotator-flex-content">
                                    <xsl:if test="string-length(@Headline) &gt; 0">
                                        <div class="headline-content headline-and-button rotator-centered-text">
                                            <xsl:value-of select="@Headline" disable-output-escaping="yes" />
                                        </div>
                                    </xsl:if>
                                    <xsl:if test="string-length(@SlideLink) &gt; 0">
                                        <div class="rotator-link">
                                            <a href="{@SlideLink}" class="rotator-link-text btn btn-primary btn-md">
                                                <xsl:if test="@NewWindow = 1">
                                                    <xsl:attribute name="target">_blank</xsl:attribute>
                                                </xsl:if>
                                                <xsl:if test="string-length(@TextForLink) &gt; 0">
                                                    <xsl:value-of select="@TextForLink" disable-output-escaping="yes" />
                                                </xsl:if>
                                            </a>
                                        </div>
                                    </xsl:if>
                                </div>
                            </div>
                        </div>
                    </xsl:when>
                    <!-- when caption or headline or none are present -->
                    <xsl:otherwise>
                        <xsl:if test="string-length(@Headline) &gt; 0">
                            <div class="headline-content">
                                <xsl:value-of select="@Headline" disable-output-escaping="yes" />
                            </div>
                        </xsl:if>
                        <xsl:if test="string-length(@Caption) &gt; 0">
                            <div class="caption-content">
                                <p>
                                    <xsl:value-of select="@Caption" disable-output-escaping="yes" />
                                </p>
                            </div>
                        </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>