<?xml version='1.0' encoding="utf-8"?> 
<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--
  <xsl:import href="http://docbook.sourceforge.net/release/xsl-ns/current/xhtml/docbook.xsl"/>
-->
  <xsl:import href="docbook-xsl-ns/fo/docbook.xsl"/>

  <!-- <xsl:param name="html.stylesheet" select="'corpstyle.css'"/>  -->
  <!-- <xsl:param name="admon.graphics" select="1"/> -->

  <xsl:param name="paper.type">A4</xsl:param>
  <xsl:param name="page.margin.inner">1.5cm</xsl:param>
  <xsl:param name="page.margin.outer">1.5cm</xsl:param>
  <xsl:param name="double.sided" select="1"/>
  <xsl:param name="body.start.indent" select="'0pt'"/>
  
  <xsl:param name="column.count.body" select="2"/>
  <xsl:param name="column.count.back" select="2"/>

  
  <xsl:param name="part.autolabel" select="0"/>
  <xsl:param name="chapter.number.format">I</xsl:param>
  <!--
  <xsl:param name="chapter.autolabel" select="1"/>
-->
  <!-- <xsl:param name="section.autolabel.max.depth" select="5"/> -->
  <xsl:param name="toc.section.depth" select="1"/>

  <xsl:param name="draft.mode">maybe</xsl:param>

  <xsl:param name="variablelist.max.termlength" select="10"/>
  <!--
  <xsl:param name="variablelist.term.break.after" select="0"/>
  <xsl:param name="variablelist.term.separator"></xsl:param>
-->

  <xsl:param name="insert.xref.page.number">yes</xsl:param>

</xsl:stylesheet>
