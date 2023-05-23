<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <html>
      <head>
        <style type="text/css">
          table {
            background-color: #c2e3f6;
            color: black;
          }
          body {
            background-color: green;
          }
        </style>
      </head>
      <body>
        <h2>Información personal del alumno:</h2>
        <ul>
          <li><strong>Nombres: </strong><xsl:value-of select="//informacion_personal/@nombre"/></li>
          <li><strong>Apellidos: </strong><xsl:value-of select="//informacion_personal/@apellidos"/></li>
          <li><strong>Ciclo: </strong><xsl:value-of select="//informacion_personal/@ciclo"/></li>
        </ul>
        <!--La tabla donde mostramos los datos de cada modulo
            con sus respectivas ufs-->
        <h2>Calificaciones:</h2>
        <table border="5">
          <tr>
            <th>Modulo</th>
            <th>UF1</th>
            <th>Hores</th>
            <th>UF2</th>
            <th>Hores</th>
            <th>UF3</th>
            <th>Hores</th>
          </tr>
          <!--Aqui haremos la extraccion de informacion del fichero xml
            que son las notas que se ha puesto en cada modulo correspondiente.  -->
          <xsl:for-each select="//modulos/modulo">
            <tr>
              <td><xsl:value-of select="@nombre"/></td>
              <td><xsl:value-of select="unidad_formativa[@nombre='UF1']/@nota"/></td>
              <td><xsl:value-of select="unidad_formativa[@nombre='UF1']/@hores"/></td>
              <td><xsl:value-of select="unidad_formativa[@nombre='UF2']/@nota"/></td>
              <td><xsl:value-of select="unidad_formativa[@nombre='UF2']/@hores"/></td>
              <td><xsl:value-of select="unidad_formativa[@nombre='UF3']/@nota"/></td>
              <td><xsl:value-of select="unidad_formativa[@nombre='UF3']/@hores"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>