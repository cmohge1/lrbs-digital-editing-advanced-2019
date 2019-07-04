<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" version="2.0">
    <xsl:output method="html" version="5.0" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <xsl:result-document href="../output/{tei:TEI/@xml:id}.html">
            <xsl:element name="html">
                <xsl:element name="head">
                    <xsl:element name="title">
                       <xsl:value-of select="//tei:titleStmt/tei:title"/>
                        <xsl:text>by </xsl:text>
                        <xsl:value-of select="//tei:titleStmt/tei:author"/>
                    </xsl:element>
                </xsl:element>
                <xsl:element name="body">
                    <h1><xsl:value-of select="//tei:titleStmt/tei:title"/><br />
                    <xsl:text> by </xsl:text><br />
                    <xsl:value-of select="//tei:author"/></h1>
                </xsl:element>
            </xsl:element>
            <xsl:apply-templates/>
        </xsl:result-document>
    </xsl:template>
    
    <xsl:template match="tei:teiHeader"/>
    
    <xsl:template match="tei:p">
        <xsl:element name="p">
        <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
<xsl:template match="tei:div[@type='Chapter']">
        <xsl:element name="h3">
            <xsl:value-of select="@type"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="@n"/>
        </xsl:element>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:head">
        <xsl:element name="h2">
            <xsl:text>Book </xsl:text>
            <xsl:value-of select="parent::tei:div/@n"/>
            <xsl:text>: </xsl:text>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:pb">
        <br />
        <xsl:text>[Start of page </xsl:text><xsl:value-of select="@n"/>
        <xsl:text>]</xsl:text><br />
    </xsl:template>
    
    <xsl:template match="tei:w[@lemma]">
       <xsl:element name="span"> 
           <xsl:attribute name="title">
               <xsl:text>Root word: </xsl:text>
               <xsl:value-of select="@lemma"/>
           </xsl:attribute>
           <xsl:attribute name="style">text-decoration: underline;</xsl:attribute>
        <xsl:apply-templates/></xsl:element>
    </xsl:template>
    
</xsl:stylesheet>