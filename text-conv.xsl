<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" version="2.0">
    
    
    <xsl:output method="text" />
    
    <xsl:template match="tei:teiHeader"/>
    
    <xsl:template match="tei:l">
    <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:front"/>
    
    <xsl:template match="tei:speaker"/>
    
</xsl:stylesheet>