<?xml version='1.0' encoding="utf-8"?> 
<xsl:stylesheet
    version="1.0"
    xmlns="http://docbook.org/ns/docbook"
    xmlns:db="http://docbook.org/ns/docbook"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="db:simpara">
    <formalpara>
      <title>
	<xsl:number level="single" from="chapter" format="1."/>
      </title>
      <para>
	<xsl:apply-templates/>
      </para>
    </formalpara>
  </xsl:template>

  <xsl:template match="db:phrase">
    <emphasis>
      <xsl:apply-templates/>
    </emphasis>
  </xsl:template>

  <xsl:template match="@*|node()" priority="-1">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>
