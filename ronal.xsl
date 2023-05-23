<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/portfoli">
    <html>
      <head>
        <title>Portafilio M04</title>
        <META http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="m04.css" type="text/css" rel="stylesheet" />
        <link rel="icon" type="images/jpg" href="imatges/pestaña1.jpeg" />
      </head>
      <header>
        <h1>Portfolio de activades del alumno Ronal Chipana</h1>
        <a class="next-button" href="/M04-XML-RONAL/portfoli.xml">opcion3</a>
        <a class="next-button" href="/M04-XML-RONAL/UF2- XML-XSL/ExamenRonalM04.xml">opcion2</a>
        <a class="next-button" href="/M04-XML-RONAL/UF1 EXAMEN ASIX M04/Pagines/Inici.html">opcion1</a>
        <a class="next-button" href="/M04-XML-RONAL/index.html">inicio</a>
      </header>
      <body>
        <div class="container">
          <h2>Las activades que hemos realizado en M04</h2>
          <div class="activitats">
            <xsl:for-each select="//modul/UFs/*">
              <h3>
                <xsl:value-of select="nom" />
              </h3>
              <xsl:for-each select=".//activitat">
                <p>
                  <xsl:value-of select="." />
                </p>
                <xsl:choose>
                  <xsl:when test="img">
                    <img src="{img/@src}" alt="Descripción de la imagen" />
                  </xsl:when>
                </xsl:choose>
              </xsl:for-each>
            </xsl:for-each>
          </div>
        </div>
      </body>
      <footer>
        <xsl:for-each select="//curs">
          <h3>Centre: <xsl:value-of select="centre" /></h3>
          <h3>Curs: <xsl:value-of select="nom" /></h3>
          <p>Data: <xsl:value-of select="data" /></p>
        </xsl:for-each>
      </footer>
    </html>
  </xsl:template>
</xsl:stylesheet>
