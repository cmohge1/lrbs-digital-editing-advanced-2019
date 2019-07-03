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
	* [General Notes on Transformations](#general-notes-on-transformations)
		* [Seminar 9: Intro to XSLT part 1](#seminar-9-intro-to-xslt-part-1)
			* [Exercise 1: push stylesheet](#exercise-1-push-stylesheet)
		* [Seminar 10: Intro to XSLT part 2](#seminar-10-intro-to-xslt-part-2)
			* [Exercise 2:](#exercise-2)
		* [Seminar 11: XLST Part 3: Indexing and publishing](#seminar-11-xlst-part-3-indexing-and-publishing)
			* [Publishing tools](#publishing-tools)
			* [OxGarage](#oxgarage)

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
|9.30	| Seminar 9: Intro to XSLT part 1 [GB/CO] | Presentation and practice |
| 11.30	| Seminar 10: Intro to XSLT part 2 [GB] | Presentation and practice |
| 14.00 | Seminar 11: XLST Part 3: Bringing it all together | Practice |
| 16.00   | Library Time   | Senate House Library  |

## Readings

Michael Kay, [*XSLT 2.0 and XPath 2.0: A Programmer's Reference*](https://books.google.co.uk/books?id=lK4vGUcQFs4C&printsec=frontcover&source=gbs_ge_summary_r&cad=0#v=onepage&q&f=false), 4th ed. Wiley, 2008.

Jenni Tennyson, *Beginning XSLT 2.0: From Novice to Professional*. APress, 2005.

## General Notes on Transformations

Transform? Generally, that means taking a source file (XML) and changing it into another format: PDF, HTML, XHTML, ePub (even a Word docx).

The source file is your edition; and that edition is data. But not all of that data will be useful (or workable) for other formats.

There is no one-to-one correspondence with any other format: one does not engage in TEI encoding in order to achieve a certain *look* in a web page. The rendering of a source file is yet another fluid text of the edition. Distinct from, yet aligned with, the source file.

It reasonable to not transform TEI files – you may choose never to publish it as a web page. But you could publish it as a dataset or corpus that you use for text analysis. TEI records your interpretations and critical judgments of the text.

The TEI-C XSLT Stylesheets are limited; they are only as good as your instructions.

They do come with many parameters that you can set to change the output, but the TEI cannot predict what you want to do.

Most projects create their own transformations that are specific to their own project’s goals. There is still a need for more general purpose stylesheets.

The good news is: You can master basic XSLT in just a few days. Not-so-good news: XSLT has a strange syntax and loads of functions. It is also a programming language, which has more of a learning curve than encoding.

### Seminar 9: Intro to XSLT part 1

- What are stylesheets? (slides)
- Transformation (e.g. of EpiDoc Stylesheets)
- XSLT syntax
  - xsl:template / xsl:apply-templates / xsl:value-of
  - xsl:element / xsl:attribute / xsl:text
  - xsl:if / xsl:choose / xsl:for-each
  - xsl:result-document
- Push vs. Pull stylesheets

#### Exercise 1: push stylesheet

Push stylesheet: add headings, paragraphs, sigla to text div (see the slides).

### Seminar 10: Intro to XSLT part 2

- Grouping and sorting syntax
  - xsl:for-each / xsl:for-each-group
  - xsl:sort
  - xsl:variable / xsl:parameter
- Functions:
  - lowercase() / normalize-space() / normalize-unicode()
  - number() / string() / substring() / translate()
not() / starts-with() / matches()
- Exercise 2: pull stylesheet (turn XML data-structure into html table)

#### Exercise 2:

Pull stylesheet: turn XML data-structure into html table (see slides).

### Seminar 11: XLST Part 3: Indexing and publishing

- Continue and consolidate exercises 1 & 2
- Apply more templates to Dawn exercise
- Tooltip lemmata
- Add book/chapter numbers
- Add table of contents?
- Apply formating?
- Find line-counts for Bad-Hamlet speakers
- Another exercise using example [marginalia data](460-markings-only.xml) and [table generating xsl](word-count-per-marking.xsl)
- What else would you like to do with these (or your own) xml files?

#### Publishing tools

1. **Out-of the box approach**

See the TEI Publishing options that were covered in [Day 5](https://cmohge1.github.io/lrbs-digital-editing-intro-2019/day5/#seminar-13-publishing-options) of the Digital Editing Intro Module.

2. **Transformation Scenarios in oXygen**

There are a variety of ways to look at the transformation scenarios that come bundled with Oxygen, but the easiest is probably to use the menu icon for ‘Configure Transformation Scenarios. This is an icon that looks like a spanner/wrench with a red play button.
Transforming Your Document to XHTML
You will notice that there are a variety of TEI P5 transformation scenarios available for this kind of document.
Click on the checkbox next to TEI P5 XHTML. Then click on the ‘Apply Associated’ button at the bottom
You should, after a short time for it to transform, be presented with a browser window showing this document having been transformed to XHTML.
Note that it tries to give you a Table of Contents by default, but hasn’t been given enough information to do this.  (It needs a <head> element immediately inside each of the <div> elements in the document to do this properly.  But don’t bother doing that now.)
Note also that it has numbered each of the divisions when maybe we didn’t want it to.
**Configuring Transformation Parameters**
Go back to the Transformation Scenarios windows yet again, and uncheck all conversions
With the TEI P5 XHTML transformation scenario highlighted with a blue line, but not checked, click the ‘Edit’ button below
You will be asked if you want to duplicate this and edit the copy, say yes!
This will bring up an Edit scenario window.
This enables you to set all sorts options about the transformation, where the output is sent, etc. You don’t need to change any of these now.
Click on the Parameters button and this will bring up a ‘Configure parameters’ button.

If you remember, the transformation to XHTML was adding a table of contents we did not want, and numbering headings. Let’s change that now!
If you see at the bottom of the window there is autoToc parameter. This is the one which automatically provides a table of contents. If you click on it, and then click ‘Edit’, you are able to change the value from true to false.
(You don’t have to but you could now as an intermediate step click Ok on these windows and the apply the transformation scenario again, and you’d see that the ‘Table of Contents’ label has disappeared… or you could wait and do the next change first)
The parameter to change whether <head> elements are numbered in the output is called ‘numberHeadings’. You could scroll down to find that or type it in the search box at the top of the Configure Parameters window to filter the contents to only show that parameter.
Change the ‘numberHeadings’ parameter to false.
Click Ok on all these windows until you are back at the Configure Transformation Scenarios window and making sure only your TEI P5 XHTML - Copy scenario is checked, click ‘Apply Associated’.
If you have done the above correctly, the Table of Contents label will have disappeared, and the divisions will no longer be numbered.

#### OxGarage

The [OxGarage](https://oxgarage2.tei-c.org) service can process TEI documents into several formats.

After navigating to OxGarage,
- Go to "Select Documents" and then "TEI P5 XML Document"
- Choose a document format to convert it to, such as XHTML or Microsoft Word (.docx)
- Upload your document for conversion and click ‘Convert.’
- Open the downloaded file to see what it looks like

Typically these processed files should look like the Oxygen Transformation Scenarios, but there may be some minor differences.

Some interesting things about OxGarage is that:
It pipelines conversions going from Format A to B to C to D if it can’t go from Format A to Format D directly (but the conversions are only as good as all the intermediate steps).

One is able to access its API (Application Program Interface) to script changes over a large number of documents, or to automate transformation of things for another web application. Both Roma and RomaJS both do this to create schemas and documentation.
