<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <style>
          body {
            background-color: #86332a;
            font-family: 'Segoe UI', sans-serif;
            color: white;
            padding: 20px;
          }

          h1 {
            color: #ffe8d6;
            text-align: center;
            margin-bottom: 30px;
          }

          table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
            background-color: #fff;
            color: #333;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
          }

          th {
            background-color: tomato;
            padding: 12px;
            font-size: 16px;
            color: white;
            text-align: left;
          }

          td {
            padding: 10px;
            border-bottom: 1px solid #ccc;
          }

          tr:nth-child(even) td {
            background-color: #f9f9f9;
          }

          tr:hover td {
            background-color: #ffe5d9;
          }
        </style>
      </head>

      <body>
        <h1>Summary of Plushie Product</h1>
        <table>
          <tr>
            <th>Categories</th>
            <th>Product Name</th>
            <th>Size</th>
            <th>Price</th>
          </tr>

          <xsl:for-each select="product/details">
            <xsl:sort select="categories" order="ascending"/>
            <tr>
              <td><xsl:value-of select="categories"/></td>
              <td><xsl:value-of select="productname"/></td>
              <td><xsl:value-of select="size"/></td>
              <td><xsl:value-of select="price"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>