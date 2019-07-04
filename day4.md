---
layout: page
title:  "Day 4"
permalink: /day4.html
---

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->
<!-- code_chunk_output -->

* [Day 4 (4 July)](#day-4-4-july)
	* [Aims](#aims)
	* [Thursday, 4 July: Introduction to XSLT for text processing](#thursday-4-july-introduction-to-xslt-for-text-processing)
	* [Readings](#readings)
		* [General Notes on Transformations](#general-notes-on-transformations)
		* [Seminar 9: XSLT 1](#seminar-9-xslt-1)
			* [Exercise 1: Push stylesheet](#exercise-1-push-stylesheet)
		* [Seminar 10: XSLT 2](#seminar-10-xslt-2)
			* [Exercise 2:](#exercise-2)
		* [Seminar 11: XLST 3](#seminar-11-xlst-3)
			* [Publishing tools](#publishing-tools)
			* [Another option: OxGarage](#another-option-oxgarage)

<!-- /code_chunk_output -->

# Day 4 (4 July)

Today will feature a full day of processing XML: two sessions introducing XSLT, and a full practical session on working with XSLT.

## Aims

- General grasp of the structure of XSLT documents, and how they interact with XML.

- Facility with transforming an XML file with an XSLT template.

- Understanding the difference between push and pull transformations.

- Creating transformation scenarios in oXygen.

- Understanding of how XSLT relates to publishing.

## Thursday, 4 July: Introduction to XSLT for text processing

|Time   | Topic   | Type |
|---|---|---|
|9.30	| Seminar 9: Intro to XSLT part 1 [GB/CO] | Presentation and practice |
| 11.30	| Seminar 10: Intro to XSLT part 2 [GB] | Presentation and practice |
| 14.00 | Seminar 11: XLST Part 3: Bringing it all together | Practice |
| 16.00   | Library Time   | Senate House Library  |

## Readings

Michael Kay, [*XSLT 2.0 and XPath 2.0: A Programmer's Reference*](https://books.google.co.uk/books?id=lK4vGUcQFs4C&printsec=frontcover&source=gbs_ge_summary_r&cad=0#v=onepage&q&f=false), 4th ed. Wiley, 2008. [More of a programming reference]

Jenni Tennyson, *Beginning XSLT 2.0: From Novice to Professional*. APress, 2005. [More of a tutorial with loads of helpful tips]

Syd Bauman and Martin Holmes, [XSLT Coursepack for DHSI](Intro-to-XSLT-DHSI.pdf).

### General Notes on Transformations

Transform? Generally, that means taking a source file (XML) and changing it into another format: PDF, HTML, XHTML, ePub (even a Word docx).

In the digital age, the source file is your edition; and that edition is data. But not all of that data will be useful (or workable) for other formats.

There is no one-to-one correspondence with any other format: one does not engage in TEI encoding in order to achieve a certain *look* in a web page. The rendering of a source file is yet another fluid text instance of the edition. Distinct from, yet aligned with, the source file.

It is reasonable to not transform TEI files; you may choose never to publish it as a web page. But you could publish it as a dataset or corpus that you use for text analysis. TEI records your interpretations and critical judgments of the text.

The TEI-C XSLT Stylesheets are limited; they are only as good as your instructions. They do come with many parameters that you can set to change the output.

Most projects create their own transformations that are specific to their own project’s goals. There is still a need for more general purpose stylesheets.

The good news is: You can master basic XSLT in just a few days. Not-so-good news: XSLT has a strange syntax and loads of functions (for which consult Kay's book). It is also a programming language, which has more of a learning curve than encoding. That said, XSLT employs the logic of XML, meaning it is more structural than several other programming languages (and it maps easily to TEI documents).

### Seminar 9: XSLT 1

**Outline: Pushing, Styling, and Setting Conditionals**

- First: Access the folder of exercise files [here](XSLT_Exercises.zip).
- What are stylesheets? (see the CSS/XSLT [intro slides](https://docs.google.com/presentation/d/1NXKUdFdn5JzZX2HQ1XGZlW7M8UbIMMFpwK8KJU_6nNM/present?slide=id.i0))
- [Transformation slides](https://docs.google.com/presentation/d/1cQuhG5rL-aAdj6MO1K7bJFHJZtP7fUmwZgPvJgVbKLE/present?slide=id.p)
- XSLT syntax
  - xsl:template / xsl:apply-templates / xsl:value-of
  - xsl:element / xsl:attribute / xsl:text
  - xsl:if / xsl:choose / xsl:for-each
  - xsl:result-document
- Push vs. Pull stylesheets

#### Exercise 1: Push stylesheet

Push stylesheet: add headings, paragraphs, sigla to text div (see the slides).

**[Click here](transformer-spoiler.xsl) for the first XSLT spoiler file for the Butler text.**

**See how it should look in [HTML](Dawn-1-1-1.html).**

### Seminar 10: XSLT 2

**Outline: Pulling, Grouping, Sorting**

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

Pull stylesheet: turn XML data-structure into html table (see the last few slides).

**Here is the [XSLT spoiler file](exercise2-spoiler.xsl).**

**See how it should look in [HTML](Dawn-1-1-1-crunch.html).**

### Seminar 11: XLST 3

**Outline: Bringing it all together**

- Continue and consolidate exercises 1 and 2
- Importance of clear code and commenting
- Apply more templates to Dawn exercise
- Tooltip lemmata
- Add book/chapter numbers
- Add table of contents?
- Apply formatting?
- Find line-counts for Bad-Hamlet speakers
- Another exercise using example [marginalia data](460-markings-only.xml) and [table generating xsl](word-count-per-marking.xsl)
- What else would you like to do with these (or your own) xml files?

#### Publishing tools

1. **Out-of the box approach**: <br />
See the TEI Publishing options that were covered in [Day 5](https://cmohge1.github.io/lrbs-digital-editing-intro-2019/day5/#seminar-13-publishing-options) of the Digital Editing Intro Module.

2. **Transformation Scenarios in oXygen**:<br />
There are a variety of ways to look at the transformation scenarios that come bundled with Oxygen, but the easiest is probably to use the menu icon for ‘Configure Transformation Scenarios. This is an icon that looks like a spanner/wrench with a red play button.<br /><br />
**Transforming Your Document to XHTML**:<br />
You will notice that there are a variety of TEI P5 transformation scenarios available for this kind of document.<br />
<br />Click on the checkbox next to TEI P5 XHTML. Then click on the ‘Apply Associated’ button at the bottom
You should, after a short time for it to transform, be presented with a browser window showing this document having been transformed to XHTML.<br />
<br />Note that it tries to give you a Table of Contents by default, but hasn’t been given enough information to do this.  (It needs a <head> element immediately inside each of the <div> elements in the document to do this properly.  But don’t bother doing that now.)
<br />Note also that it has numbered each of the divisions when maybe we didn’t want it to.<br /><br />
**Configuring Transformation Parameters**:<br />
Go back to the Transformation Scenarios windows yet again, and uncheck all conversions.<br />
With the TEI P5 XHTML transformation scenario highlighted with a blue line, but not checked, click the ‘Edit’ button below.<br />
<br />You will be asked if you want to duplicate this and edit the copy; enter "yes".<br />
<br />This will bring up an Edit scenario window, enabling you to set options about the transformation, where the output is sent, etc. You don’t need to change any of these now.<br />
<br />Click on the Parameters button and this will bring up a ‘Configure parameters’ button.<br />
<br />Previously, the transformation to XHTML was adding a table of contents and numbering headings.<br />
<br />To change that, click on the autoToc parameter ( provides a table of contents) at the bottom of the window. Then click ‘Edit’, and you be able to change the value from true to false.<br />
<br />The parameter to change whether <head> elements are numbered in the output is called "numberHeadings". You could scroll down to find that or type it in the search box at the top of the Configure Parameters window to filter the contents to only show that parameter. Change the ‘numberHeadings’ parameter to false.<br />
<br />Click OK on all these windows until you are back at the Configure Transformation Scenarios window and making sure only your TEI P5 XHTML - Copy scenario is checked, click ‘Apply Associated’.

#### Another option: OxGarage

The [OxGarage](https://oxgarage2.tei-c.org) service can process TEI documents into several formats.

After navigating to OxGarage,
- Go to "Select Documents" and then "TEI P5 XML Document"
- Choose a document format to convert it to, such as XHTML or Microsoft Word (.docx)
- Upload your document for conversion and click ‘Convert.’
- Open the downloaded file to see what it looks like

Typically these processed files should look like the Oxygen Transformation Scenarios, but there may be some minor differences.

OxGarage also has an API (Application Program Interface) that enables you to script changes over a large number of documents, or to automate transformation of things for another web application. Both Roma and RomaJS both do this to create schemas and documentation.

**Proceed to [Day 5](day5.md).**
