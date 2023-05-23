<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/portfoli">
        <html>
            <head>
               <link rel="stylesheet" type="text/css" href="estils.css"/>
            </head>
            <header>
            <h1>Portfoli d'activitats de l'alumne <xsl:value-of select="//alumne" /></h1>
            </header>
              <body>
              <div class="container">
            <h1>Activitats realitzades al mòdul <xsl:value-of select="//modul/nom" /></h1>
            <div class="activitats">
            <xsl:for-each select="//modul/UFs/*">
    <h3><xsl:value-of select="nom"/></h3>
    <xsl:for-each select=".//activitat">
        <p><xsl:value-of select="."/></p>
        <xsl:choose>
            <xsl:when test="img">
                <img src="{img/@src}"/>
            </xsl:when>
        </xsl:choose>
    </xsl:for-each>
</xsl:for-each>
            </div>
            </div>
         </body>
         <footer>
         <xsl:for-each select="//curs">
         <h3>Centre: <xsl:value-of select="centre"/></h3>
        <h3>Curs: <xsl:value-of select="nom"/></h3>
        <p>Data: <xsl:value-of select="data"/></p>
        </xsl:for-each>
         </footer>
        </html>
    </xsl:template>
</xsl:stylesheet>
