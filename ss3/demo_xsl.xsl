<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <HTML>
            <HEAD>
                <TITLE>XSL</TITLE>
            </HEAD>
            <BODY>
                <h1><xsl:value-of select="cart/date"/></h1>
                <h1><xsl:value-of select="cart/grand_total"/></h1>
                <h2>Khach Hang: <xsl:value-of select="cart/customer/c_name"/></h2>
                <h2>Telephone: <xsl:value-of select="cart/customer/c_tel"/></h2>
                <h2>Address: <xsl:value-of select="cart/customer/c_address"/></h2>
                <br/>
                <table border="1">
                    <thead>
                        <th>No.</th>
                        <th>Product Name</th>
                        <th>Qty</th>
                        <th>Price</th>
                    </thead>
                    <tbody>
                        <xsl:for-each select="cart/item/product">
                            <xsl:sort select="p_name" order="descending"/>
                            <tr>
                                <td><xsl:value-of select="position()"/></td>
                                <td> <xsl:value-of select="p_name"/></td>
                                <td> <xsl:value-of select="qty"/></td>
                                <td> <xsl:value-of select="price"/></td>
                                <td><xsl:if test="qty &gt;= 5">
                                    <span style="color:red">Mua nhieu</span>
                                </xsl:if></td>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test=" qty = 5">
                                            <span style="color:blue">Mua 5 products</span>
                                        </xsl:when>

                                        <xsl:when test=" qty = 10">
                                            <span style="color:blue">Mua 10 products</span>
                                        </xsl:when>

                                        <xsl:otherwise>
                                            <span style="color:orange">Nhung truong hop con lai</span>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </BODY>
        </HTML>
    </xsl:template>
</xsl:stylesheet>
