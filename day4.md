---
layout: page
title:  "Day 4"
permalink: /day4.html
---

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->
<!-- code_chunk_output -->

* [Day 4 (4 July)](#day-4-4-july)
	* [Aims](#aims)
	* [Thursday, 4 July: XSLT for processing](#thursday-4-july-xslt-for-processing)
	* [Readings](#readings)
		* [Seminar 9: Intro to XSLT part 1](#seminar-9-intro-to-xslt-part-1)
			* [Exercise 1: push stylesheet](#exercise-1-push-stylesheet)
		* [Seminar 10: Intro to XSLT part 2](#seminar-10-intro-to-xslt-part-2)
			* [Exercise 2:](#exercise-2)
		* [Seminar 11: XLST Part 3: Indexing and publishing](#seminar-11-xlst-part-3-indexing-and-publishing)

<!-- /code_chunk_output -->

# Day 4 (4 July)

Today will feature a full day of processing XML: two sessions introducing XSLT, and a session indexing and publishing with XSLT.

## Aims

- General grasp of the structure of XSLT documents, and how they interact with XML.

- Facility with transforming an XML files with an XSLT template.

- Creating transformation scenarios in oXygen.

## Thursday, 4 July: XSLT for processing

|Time   | Topic   | Type |
|---|---|---|
|9.30	| Seminar 9: Intro to XSLT part 1 [GB/CO] | Presentation |
| 11.30	| Seminar 10: Intro to XSLT part 2 [GB] | Practice |
| 14.00 | Seminar 11: XLST Part 3: Indexing and publishing | Presentation |
| 16.00   | Library Time   | Senate House Library  |

## Readings

Michael Kay, [*XSLT 2.0 and XPath 2.0: A Programmer's Reference*](https://books.google.co.uk/books?id=lK4vGUcQFs4C&printsec=frontcover&source=gbs_ge_summary_r&cad=0#v=onepage&q&f=false), 4th ed. Wiley, 2008.

Jenni Tennyson, *Beginning XSLT 2.0: From Novice to Professional*. APress, 2005.

### Seminar 9: Intro to XSLT part 1

- What are stylesheets? (slides)
- Transformation (e.g. of EpiDoc Stylesheets)
XSLT syntax
- xsl:template / xsl:apply-templates / xsl:value-of
- xsl:if / xsl:choose / xsl:for-each
- xsl:element / xsl:attribute / xsl:text
- xsl:result-document
- Push vs. Pull stylesheets

#### Exercise 1: push stylesheet
Add headings, paragraphs, sigla to text div.


### Seminar 10: Intro to XSLT part 2

- Grouping and sorting syntax
- xsl:for-each / xsl:for-each-group
- xsl:sort
- xsl:variable / xsl:parameter
- Functions:
    - lowercase() / normalize-space() / normalize-unicode()
    - number() / string() / substring() / translate()
    - not() / matches() / starts-with()

#### Exercise 2:
Pull stylesheet (turn XML data-structure into html table).


### Seminar 11: XLST Part 3: Indexing and publishing

- Finish XSLT practice.

- Customizing existing XSLT
- Reading XSLT
- Importance of commenting/documenting
- Clear code
- Indexing
- What and why (“index”, conc, search index…)
- How (for-each-group vs xquery vs xmlDB…)

- Some publishing and database tools: Kiln, TEI Publisher/Tapas, eXist, XQuery.
