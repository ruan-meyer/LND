<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html lang="es">
        <head>
            <meta charset="UTF-8"/>
            <title>Mostrar Elementos</title>
        </head>
        <body>
            <h1>Mostrar Elementos y Atributos</h1>
            <p>
                <xsl:value-of select="//ciclo[1]/nombre"/>
                <xsl:text> (</xsl:text>
                <xsl:value-of select="//ciclo[1]/decretoTitulo/@año"/>
                <xsl:text>)</xsl:text>
            </p>
            <p>
                <xsl:value-of select="//ciclo[2]/nombre"/>
                <xsl:text> (</xsl:text>
                <xsl:value-of select="//ciclo[2]/decretoTitulo/@año"/>
                <xsl:text>)</xsl:text>
            </p>
            <p>
                <xsl:value-of select="//ciclo[3]/nombre"/>
                <xsl:text> (</xsl:text>
                <xsl:value-of select="//ciclo[3]/decretoTitulo/@año"/>
                <xsl:text>)</xsl:text>
            </p>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>