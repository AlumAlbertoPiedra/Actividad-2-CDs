<?xml version="1.0" encoding = "UTF-8"?>
<xsl:stylesheet version ="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1> Mis CD's </h1>
                <table>
                    <tr bgcolor="#0000FF">
                        <th> Nombre del artista </th>
                        <th> Canciones </th>
                    </tr>
                    <xsl:for-each select="listaCDs/CD[artista ='Adele']">
                        <tr>
                            <td>
                                <xsl:value-of select="artista"/>
                            </td>
                            <td>
                                <xsl:for-each select="canciones">
                                    <xsl:value-of select="."/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>