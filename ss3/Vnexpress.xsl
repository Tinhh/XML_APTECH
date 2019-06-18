<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <HTML>
            <HEAD>
                <TITLE>Vnexpress</TITLE>
            </HEAD>
            <BODY>
                <div>
                    <img>
                        <xsl:element name="a">
                            <xsl:attribute name="src">
                                <xsl:value-of select="Vnexpress/hot_tintuc/new/img"/>
                            </xsl:attribute>
                        </xsl:element>
                    </img>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="link"/>
                        </xsl:attribute>
                        <xsl:value-of select="Vnexpress/hot_tintuc/new/title"/>
                    </a>
                    <h3>
                        <xsl:value-of select="Vnexpress/hot_tintuc/new/content"/>
                    </h3>
                </div>
                <div>
                    <tbody>
                        <xsl:for-each select="Vnexpress/tintuc">
                            <xsl:attribute name="href">
                                <xsl:value-of select="link"/>
                            </xsl:attribute>
                            <td>
                                <xsl:value-of select="title"/>
                            </td>
                            <br/>
                        </xsl:for-each>

                    </tbody>
                </div>


            </BODY>
        </HTML>
    </xsl:template>
</xsl:stylesheet>