<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/"> 
        <html lang="es">
        <head>
            <meta charset="utf-8"/>
            <title>Aplly-Templetates.Mode</title>
        </head>
        <body>
            <h1>Aplly-Templetates.Mode</h1>
            <xsl:apply-templates select="//ciclo" mode="list"/>
            <table>
            <tr>
                <th>Titulo</th>
                <th>Año</th>
            </tr>
            <xsl:apply-templates select="//ciclo" mode="table"/>
            </table>
        </body>
        </html>
    </xsl:template>
    <xsl:template match="ciclo" mode="list">
                <li>
                    <xsl:value-of select="nombre"/>
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="decretoTitulo/@año"/>
                    <xsl:text>)</xsl:text>
                </li>
    </xsl:template>
    <xsl:template match="ciclo" mode="table">
                <tr>
                    <td>
                        <xsl:value-of select="nombre"/>
                    <td>
                    <td>
                        <xsl:value-of select="decretoTitulo/@año"/>
                    </td>
                </tr>
    </xsl:template>
</xsl:stylesheet>



