<?xml version="1.0" encoding = "UTF-8"?>
<xsl:stylesheet version ="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1> Canciones que duran menos de 3 minutos </h1>
                <table>
                    <tr bgcolor="#0000FF">
                        <th> Canciones </th>
                        <th> Duracion </th>
                    </tr>
                    <xsl:for-each select="listaCDs/CD">
                        <xsl:for-each select="canciones">
                            <xsl:if test="@duracion &lt; 300">
                                <tr>
                                    <td> <xsl:value-of select="."/> </td>
                                    <td> <xsl:value-of select="@duracion"/> </td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>