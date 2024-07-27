<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 5
   Case Problem 4

   Cairn Camping Store XSLT Style Sheet
   Author: Isaiah Staten
   Date:   7/26/2007

   Filename:         camping.xsl
   Supporting Files: 
-->
<xsl:stylesheet version="1.0" xmln:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"
version="4.0"
encoding="UTF-8" indent="yes"/>

<xsl:template match="/customers">
  <html>
    <body>
      <h1>Cairn Camping Store</h1>
      <h2>Customer Orders</h2>
      <table border= "1">
        <tr>
          <th>Name</th>
          <th>Address</th>
          <th>ID</th>
        </tr>
        <xsl:for-each select="customer">
          <tr>
            <td><xsl:value-of select="name"/></td>

            <td><xsl:value-of select="street"/>
                <xsl:value-of select="city"/>
                <xsl:value-of select="state"/>
                <xsl:value-of select="zipcode"/></td>

            <td><xsl:value-of select="/customer/@cid"/></td>
          </tr>
        </xsl:for-each>
      </table>

      <table>
        <tr>
          <th>Date</th>
          <th>Item ID</th>
        </tr>
        <xsl:for-each select="order">
          <tr>
            <td><xsl:value-of select="date"/></td>
            <td><xsl:value-of select="//item/@iid"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
