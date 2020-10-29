<xsl:stylesheet version="1.0" xmlns:de="." xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" version="4.0" encoding="iso-8859-1"
  doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
  doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>

<xsl:template match="file">
  <xsl:variable name="file_path" select="translate(@name,'\\','/')"/>
  <xsl:variable name="file_path_part1" select="substring-after($file_path,'/')"/>
  <xsl:variable name="module" select="substring-before($file_path_part1,'/')"/>
  <xsl:value-of select="@code"/>
  <xsl:text>&#09;</xsl:text>
  <xsl:value-of select="@language"/>
  <xsl:text>&#09;</xsl:text>
  <xsl:value-of select="$module"/>
  <xsl:text>&#09;</xsl:text>
  <xsl:value-of select="@name"/>
  <xsl:text>&#13;&#10;</xsl:text>
</xsl:template>

<xsl:template match="files">
<xsl:apply-templates select="file"/>
</xsl:template>

<xsl:template match="cloc_url">For more details see: <xsl:value-of select="."/>
<xsl:text>&#13;&#10;</xsl:text>
</xsl:template>

<xsl:template match="cloc_version">This report has been generated by cloc <xsl:value-of select="."/>.<xsl:text>&#13;&#10;</xsl:text>
</xsl:template>

<xsl:template match="header">
<xsl:apply-templates select="cloc_version"/>
<xsl:apply-templates select="cloc_url"/>
</xsl:template>

<xsl:template match="results">
<xsl:apply-templates select="header"/>
<xsl:text>&#13;&#10;</xsl:text>
<xsl:apply-templates select="files"/>
</xsl:template>

<xsl:template match="/">
<xsl:apply-templates select="results"/>
</xsl:template>

</xsl:stylesheet>