<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" version="2.0">
    <xsl:output method="html" version="5.0" encoding="UTF-8"/>
    
    
    <xsl:template match="/">
        <xsl:result-document href="../output/{tei:TEI/@xml:id}-crunch.html">
            <xsl:element name="html">
                <xsl:element name="head">
                    <xsl:element name="title">
                        <xsl:text>Unique words in </xsl:text>
                        <xsl:value-of select="//tei:titleStmt/tei:title"/>
                        <xsl:text> by </xsl:text>
                        <xsl:value-of select="//tei:titleStmt/tei:author"/>
                    </xsl:element>
                </xsl:element>
                <xsl:element name="body">
                    <xsl:element name="h1">
                        <xsl:value-of select="//tei:titleStmt/tei:title"/>
                        <xsl:text> by </xsl:text>
                        <xsl:value-of select="//tei:titleStmt/tei:author"/>
                    </xsl:element>
                    <xsl:element name="table">
                        <xsl:attribute name="border" select="'1'"/>
                        <tr>
                            <th>normalized</th>
                            <th>Word</th>
                            <th>count</th>
                            <th>length</th>
                            <th>lemma</th>
                        </tr>
                        <!-- this matches only <w> elements whose content does NOT match any of the stop-words listed. 
                            It groups them by normalizing and lowercased content -->
                        <!-- the concat function can be used with the for-each-group for combining things, in this case concat('1',@lemma,'3') for adding the word lemma value -->
                        <xsl:for-each-group
                            select="//tei:w[not(lower-case(.) = ('and', 'a', 'as', 'in', 'of', 'off', 'to', 'the'))] | //tei:forename | //tei:surname"
                            group-by="concat(normalize-unicode(normalize-space(lower-case(.)), 'NFD'), '-', @lemma)">
                            <xsl:sort select="current-grouping-key()"/>
                            <xsl:element name="tr">
                                <xsl:element name="td">
                                    <xsl:value-of
                                        select="substring-before(current-grouping-key(), '-')"/>
                                </xsl:element>
                                <xsl:element name="td">
                                    <xsl:value-of select="."/>
                                </xsl:element>
                                <xsl:element name="td">
                                    <xsl:value-of select="count(current-group())"/>
                                </xsl:element>
                                <xsl:element name="td">
                                    <xsl:value-of
                                        select="string-length(substring-before(current-grouping-key(), '-'))"
                                    />
                                </xsl:element>
                                <xsl:element name="td">
                                    <xsl:value-of
                                        select="substring-after(current-grouping-key(), '-')"/>
                                </xsl:element>
                            </xsl:element>
                        </xsl:for-each-group>
                    </xsl:element>
                    
                </xsl:element>
            </xsl:element>
        </xsl:result-document>
    </xsl:template>   
</xsl:stylesheet>