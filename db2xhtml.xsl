<?xml version='1.0' encoding="utf-8"?> 
<xsl:stylesheet
    version="1.0"
    xmlns:db="http://docbook.org/ns/docbook"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--
  <xsl:import href="http://docbook.sourceforge.net/release/xsl-ns/current/xhtml/docbook.xsl"/>
-->
  <xsl:import href="docbook-xsl-ns/xhtml/docbook.xsl"/>

  <!-- <xsl:param name="html.stylesheet" select="'corpstyle.css'"/>  -->
  <!-- <xsl:param name="admon.graphics" select="1"/> -->

  <xml:param name="paper.type" select="A4"/>

  <xsl:param name="part.autolabel" select="0"/>

  <xsl:template match="db:chapter" mode="division.number">
    <xsl:number from="part" count="chapter" format="I."/>
  </xsl:template>

  <xsl:param name="section.autolabel" select="1"/>
  <!-- <xsl:param name="section.autolabel.max.depth" select="5"/> -->
  <xsl:param name="toc.section.depth" select="3"/>

  <xsl:param name="html.stylesheet">main.css</xsl:param>

  <!-- not meaningful for html output:
       <xsl:param name="insert.xref.page.number" select="yes"/> -->
</xsl:stylesheet>
