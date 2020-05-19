<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" version="2.0">
    
    
    <xsl:output method="html" version="5.0" encoding="UTF-8"/>
    
    <xsl:template match="/">
            <xsl:element name="html">
                <xsl:element name="head">
                    <xsl:element name="title">
                        <xsl:value-of select="//tei:titleStmt/tei:title"/>
                    </xsl:element>
                </xsl:element>
                <xsl:element name="body">
                    <h1><em><xsl:value-of select="//tei:titleStmt/tei:title"/></em>
                        <xsl:text>, by </xsl:text>
                        <xsl:value-of select="//tei:author"/></h1>
                    <xsl:apply-templates/>
                </xsl:element> 
            </xsl:element>
        
    </xsl:template>
    
    <xsl:template match="tei:teiHeader"/>
    
    <xsl:template match="tei:body">
    <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:head">
        <xsl:element name="h3"><xsl:apply-templates/></xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:item">
        <xsl:element name="p"><xsl:apply-templates/></xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:title">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:p">
        <xsl:element name="p"><xsl:apply-templates/></xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:front"/>
    
    <xsl:template match="tei:back">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:bibl">
        <xsl:element name="p"><xsl:apply-templates/></xsl:element>
    </xsl:template>
    
</xsl:stylesheet>