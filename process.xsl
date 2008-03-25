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

  <!-- double verse -->
  <xsl:template match="db:simpara[following-sibling::*[1] and not(string(following-sibling::*[1]))]">
    <formalpara>
      <title>
	<xsl:apply-templates mode="number" select="."/>
	<xsl:text>&#8211;</xsl:text>
	<xsl:apply-templates mode="number"
			     select="following-sibling::*[1]"/>
      </title>
      <para>
	<xsl:apply-templates/>
      </para>
    </formalpara>
  </xsl:template>
  <!-- just skip the empty <simpara> in the second verse -->
  <xsl:template match="db:simpara[not(string(.))]" />
  <!-- produce just the number -->
  <xsl:template match="db:simpara" mode="number">
    <xsl:number level="single" from="chapter" format="1."/>
  </xsl:template>

  <xsl:template match="db:phrase">
    <emphasis>
      <xsl:apply-templates/>
    </emphasis>
  </xsl:template>

  <xsl:template match="db:legalnotice//db:variablelist">
    <formalpara>
      <xsl:apply-templates select='db:title'/>
      <para>
	<itemizedlist>
	  <xsl:apply-templates select='db:varlistentry'/>
	</itemizedlist>
      </para>
    </formalpara>
  </xsl:template>
  <xsl:template match="db:legalnotice//db:varlistentry">
    <listitem>
      <emphasis><xsl:apply-templates select="db:term/text()|db:term/*"/></emphasis>
      <xsl:apply-templates select="db:listitem/*"/>
    </listitem>
  </xsl:template>


  <xsl:template match="comment()"/>

  <xsl:template match="@*|node()" priority="-1">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
