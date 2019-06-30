---
layout: page
title: Day 2
permalink: /day2.html
---

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->
<!-- code_chunk_output -->

* [Aims](#aims)
* [Schedule: Day 2 (Monday, 2 July)](#schedule-day-2-monday-2-july)
* [Seminar 3: Customisation](#seminar-3-customisation)
	* [Notes on TEI and ODD](#notes-on-tei-and-odd)
* [Seminar 4: Matching facsimile to transcription](#seminar-4-matching-facsimile-to-transcription)
* [Seminar 5: Metadata](#seminar-5-metadata)
	* [Exercise](#exercise)
		* [`<msIdentifier>`](#msidentifier)
		* [`<msContents>`](#mscontents)
		* [`<physDesc>`](#physdesc)
		* [Recording a useful `<history>`](#recording-a-useful-history)
		* [Recoding `<additional>` information about your `<surrogates>`](#recoding-additional-information-about-your-surrogates)

<!-- /code_chunk_output -->


Today will feature an introduction to TEI customisation for scholarly editions, a tutorial on connecting image facsimiles, and a workshop on enhancing your edition metadata.

## Aims

- General grasp of using Roma to customise TEI.
- Facility with encoding surfaces and zones on facsimile transcriptions.
- A set of principles for project planning.

## Schedule: Day 2 (Monday, 2 July)

|Time   | Topic   | Type |
|---|---|---|
|9.30	| Seminar 3: Customising TEI with Roma and RomaJS [TSG] | Presentation |
| 11.30	| Seminar 4: Facsimile surfaces and zones [TSG] | Presentation |
| 14.00 | Seminar 5: Enriching TEI metadata [CO]  | Presentation |
| 15.00 | Exercise 5: Enriching the metadata of the Bunting notebook | Practice |
| 16.00   | Library Time   | Senate House Library  |

## Seminar 3: Customisation

Access the slides [here](../TEI_customization.pdf).

### Notes on TEI and ODD

[Burnard](https://books.openedition.org/oep/692): "How should you go about choosing just the parts of the TEI you need? How should you communicate the particular TEI encoding choices you have made to others so that such integration remains possible?"

Schema: the document's grammar. Say you want a rule: every poem should be a collection of `<l>` tags with `@n` (numbered line attributes), and that each group of `<l>`s should be grouped under an `<lg>` tag specifying that it is a numbered stanza (`@n` again) and a `@type` attribute for indicating the length of the stanza (e.g., couplet, tercet, quatrain, &amp;c.).

Or suppose in a documentary editing project, we are encoding letters, and we want to make sure each `<date>` tag has a `@when` attribute, or that each `<p>` has an `@xml:id` (a good idea), or that each `<persName>` has a `@ref` to point to the `@xml:id` of the person.

A schema will codify all of those rules such that the xml document will not be valid unless each is followed. The ODD validates the TEI document.

How to customise?

* `tei_all`: Simple, yet not recommended, way is to use the TEI All (or, put another way, the null) schema. This says that you will use all available modules in the TEI.

* `tei_lite`: also, simple; also not recommended (by me, at least): this selects about 50 of the most common elements used in about 90 percent of existing projects.

Both tei_all and tei_lite documents can be selected when you open a new file in oXygen (to do this, select File > New > Framework Templates > TEI P5).

There are three good ways to create schema for your project:

1. Relax ng schema (built into TEI files on oXygen).
2. Schematron.
3. ODD.

The TEI has elements such as `<schemaSpec>`, `<moduleRef>`, `<elementSpec>`, `<classSpec>` (and others) combine formal XML declarations for inclusion in a DTD or Schema with detailed documentation and examples, for inclusion in a technical manual about the encoding scheme being specified. For this reason, a document using these elements is informally known as an ODD

ODD files (One Document Does it all) are TEI customisation files that serve as a source for the derivation of

* a formal TEI schema
* readable documentation of the project's TEI encoding choices

Now, going back to oXygen, open an ODD template file by choosing New > File > Framework Templates > TEI ODD > ODD Customization. What you see looks like a standard TEI file. It even has an TEI-XML namespace and a `<teiHeader>`:

```
<?xml version="1.0" encoding="UTF-8"?>
<TEI xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:svg="http://www.w3.org/2000/svg"
  xmlns:math="http://www.w3.org/1998/Math/MathML" xmlns="http://www.tei-c.org/ns/1.0">
  <teiHeader>
    <fileDesc>
      <titleStmt>
        <title>Title</title>
      </titleStmt>
      <publicationStmt>
        <p>Publication Information</p>
      </publicationStmt>
      <sourceDesc>
        <p>Information about the source</p>
      </sourceDesc>
    </fileDesc>
  </teiHeader>
```
But what makes the ODD file is the `<schemaSpec>` element, which lists elements specifying which TEI modules we want as well as the elements and attribute rules.

```<text>
    <body>
      <schemaSpec ident="oddex1" start="TEI">
        <moduleRef key="header"/>
        <moduleRef key="core"/>
        <moduleRef key="tei"/>
        <moduleRef key="textstructure"/>
      </schemaSpec>
    </body>
  </text>
```
The `<moduleRef>` refers to a TEI module. There are currently 22 modules in the *TEI Guidelines* that match to a chapter. So, for example, the "header" module corresponds to [Chapter 2 of the TEI Guidelines on the "TEI Header"](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/HD.html).

What is happening above is simply a listing of four TEI modules to be included: "header", "core", "tei", and "textstructure". These are all required for TEI conformance, which is why they are in the ODD template file. Other optional modules include:

```
<moduleRef key="namesdates"/>
<moduleRef key="transcr"/>
<moduleRef key="analysis"/>
```

A module element makes available all the declarations allowed within the schema. Including the the `@include` and `@except` attributes will change this default structure.

So suppose you choose the optional module `<moduleRef key="analysis"/>` but you only want to use certain elements. You would check for the available elements in the module by going to the appropriate chapter in the Guidelines, which happens to be Chapter 17. The end of the chapter includes a helpful module analysis, which indicates:

**Module analysis:** Simple analytic mechanisms** Elements defined: c cl interp interpGrp m pc phr s span spanGrp w
Classes defined: att.global.analytic att.linguistic

This tells you what elements are available and what class these belong to. But if we only want to use phrase- and word-level elements (`<s>, <phr>, and <w>`) in our document (and none of the interpretive stuff), we could write a <moduleRef> thus:

```
<moduleRef key="analysis" include="s phr w"/>
```
Or, if you're really clear about the elements you want, exclude what you do not want:
```
<moduleRef key="analysis" exclude="c cl interp m pc span spanGrp"/>
```

Burnard notes a very good example of how the EpiDoc Guidelines in TEI constrained their encoding with ODD. The EpiDoc Guidelines wanted to constrain the `@type` attributes in `<div>` elements. And for very good reason: EpiDoc is the standardised set of guidelines for encoding classical documents which require a controlled vocabulary. So within their `<schemaSpec>` you will notice:

```
<elementSpec
  ident="div"
  mode="change"
  module="textstructure">
 <attList>
  <attDef
    ident="type"
    mode="replace"
    usage="req">
   <valList type="closed">
    <valItem ident="apparatus">
     <desc>to contain apparatus criticus or textual notes</desc>
    </valItem>
    <valItem ident="bibliography">
     <desc>to contain bibliographical information, previous publications,
           etc.</desc>
    </valItem>
    <valItem ident="commentary">
     <desc>to contain all editorial commentary, historical/prosopographical
           discussion, etc.</desc>
    </valItem>
    <valItem ident="edition">
     <desc>to contain the text of the edition itself; may include multiple
           text-parts</desc>
    </valItem>
    <valItem ident="textpart">
     <desc>used to divide a div[type=edition] into multiple parts (fragments,
           columns, faces, etc.)</desc>
    </valItem>
    <valItem ident="translation">
     <desc>to contain a translation of the text into one or more modern
           languages</desc>
    </valItem>
   </valList>
  </attDef>
 </attList>
</elementSpec>
```
One could also add a new element, which you could do today by just adding an `<elementSpec>`, but you also need to consider whether the non-TEI elements belongs in a certain class. You need to think about content models and how other elements are defined within those models.

Burnard: "one of the purposes of the TEI Guidelines is to guide encoding practice ... it tells you how to communicate what you have done to others."

Why are we doing this? Aren't we jumping ahead a bit on the TEI?

Answer: Possibly, but the TEI is very difficult to learn in a few days (in a few years, even), and with ODD you engage with the Guidelines with a critical eye. Moreover, it is inevitable that projects will decide to encode different things in different ways. For example, some projects might consider it very important to label each rhyme word within a poem's lines with `<rhyme>` and `@label`, and they will want to include `@type` and `@rhyme` attributes in their supervening `<lg>` elements:

```
<!-- from Alexander Pope's *Essay on Criticism* -->
<lg type="couplet" rhyme="ab">
  <l>Speak silent when you Doubt your <rhyme label="a">Sense,</rhyme></l>
  <l>And speak, tho' Sure, with <hi rend="italic">Seeming</hi> <rhyme label="b">Diffidence.</rhyme></l>
</lg>
```
Suppose I want a new element that is not available in the TEI? Like, say, an `<alliteration>` element for the poem above?

```
<elementSpec ident=”alliteration” mode=”add”>
    <classes>
      <memberOf key=”att.interpLike”/>
    </classes>
  </elementSpec>
```

You will now be able to have a valid `<alliteration>` element that you have added to an "interpLike" class, which is to say interpretive class.

Other poetry projects will not use any rhyming identifiers, as they may simply want to record, say, textual features such as variant readings. Burnard also gives a [good example](https://books.openedition.org/oep/692#tocfrom1n3) of the various ways editors will encode person names.

The ODD approach allows you to communicate exactly what encoding decisions you made, how you constrained them for consistency, and how you envision what is important in your document model. This benefits other researchers doing similar projects as well as the TEI, which is community-driven.

The TEI also offers a web application called [Roma](http://www.tei-c.org/Roma/) to build ODDs from the element and attribute specifications covered above.

For more information on writing ODDs, consult Syd Bauman and Julia Flanders's [teaching materials](http://www.wwp.neu.edu/outreach/seminars/uvic_advanced_2016/presentations/basic_odd/basic_odd_simple_00.xhtml).

## Seminar 4: Matching facsimile to transcription

Access the slides [here](../facsimile-surfaces-zones.pdf).

Access the exercise file [here](../Exercise_Transcription.pdf).

Click here for the spoiler file (not yet!).

## Seminar 5: Metadata

1. Access the slides on metadata [here](../enriching-tei-metadata.pdf).
2. Next we'll go over more precise documentation in the manuscript description: access the slides [here](../intro-ms-object-desc.pdf).

### Exercise

#### `<msIdentifier>`

Let's expand the existing ``<msIdentifier>``. As you have a lot more experience editing XML files in oXygen now, the steps will sometimes be given in less detail.

Notice that the first paragraph mostly contains information that tells us where the manuscript is, in other words it identifies it and so this text could go in a ``<msIdentifier>``.

Take the information in this paragraph and expand the ``<msIdentifier>`` until it looks something like this:

```
[TBD]
```

Note how elements are prescribed to appear in a particular order (from greatest level of granularity to more specific). Notice that most elements cannot be repeated (some like `<collection>` and `<altIdentifier>` can be).

When you've finished creating the `<msIdentifier>` delete the remains of the first `<p>` from the basic manuscript description.

#### `<msContents>`

The second paragraph contains information that will be useful in compiling an `<msContents>`. This acts as a place to store structured information concerning the intellectual contents of a manuscript. It gives a place for a summary of the contents of the manuscript and multiple `<msItem>` elements form something like a table of contents of works in the document.

Rename the second paragraph element as `<msContents>` (your document will not be valid. It should have a red line).

Highlight the text inside from the start to the end of "Collected Letters'.", press control-e to 'surround with element' and wrap this in a `<summary>`. This acts as a summary for the intellectual content
Highlight the remaining text and surround it with a `<msItem>` element.

Delete the 'Authored by' and enter the appropriate author information within an `<author>` element.

Surround 'English.' with a `<textLang>` element.

Add an `@mainLang` attribute with a value of 'en' (the ISO language code for 'English')

Add a `@ref` attribute to the `<author>` and point to your `<person>` for Basil Bunting.

As this `<msItem>` is recording information for this particular item we also want to give it a `<title>.` Create an empty `<title>` element and cut and paste "Letter To Leslie Gunston / The Wrestlers." into it.

Your <msContents> should now look something like:

```
<msContents>
<summary>This final notebook by Bunting consists of notes and other fragmentary thoughts about literature &amp;c...</summary>
<msItem>
<author>Basil Bunting (1900–1985)</author>
<textLang mainLang="en">English</textLang>
<title>Manuscript Notebook c. 1985.</title>
</msItem>
</msContents>
```
#### `<physDesc>`
The next paragraph happens to have a lot of information about the physical aspects of the manuscript. Let's turn it into a ``<physDesc>``.

1. Rename the ``<p>`` to be a ``<physDesc>``
2. Now nest within `<phyDesc>` an ``<objectDesc>`` with a ``<supportDesc>`` inside that.
3. Inside that ``<supportDesc>`` add a ``<support>``, and inside this put the text "A xxx-page notebook in the collection as ... recto and verso"
(You could wrap the element ``<material>`` around the word 'paper', but also you could add a ``@material`` attribute to ``<supportDesc>`` with a value of 'paper'. You could also categorise the object's form by adding a @form attribute on ``<objectDesc>`` with a value of 'folio'.)

4. After the closing ``</supportDesc>`` tag add a ``<layoutDesc>`` with a ``<layout>`` to record information about the physical layout. In this case "Written full width as a single column, with approximately [XX] lines per page"
5. To the ``<layout>`` element add a ``@columns`` attribute of '1', and a ``@writtenLines`` of '20'.
6. After the closing ``</objectDesc>`` add a ``<handDesc>`` with a ``@hands`` attribute with a value of '1'.
7. Inside the ``<handDesc>`` add a ``<handNote>`` with the remaining text "Written in Basil Bunting's hand in pen". (You might want to mark Bunting as a ``<persName>`` with a ref pointing back to the <person> for Basil Bunting.)

#### Recording a useful `<history>`

The ``<history>`` element gives a place to detail the ``<origin>``, ``<provenance>``, and ``<acquisition>`` of the manuscript if available. In this case we have some minimal information about the origin of the manuscript.

1. Rename the second-to-last paragraph to a ``<history>`` element.
2. Select all the text of "This notebook was written by Basil Bunting in 1985 at ..." and surround it with a ``<origin>`` element.
3. Inside this mark '1985' as an ``<origDate>`` element. This is like the ``<date>`` element, but is specific to recording the origin date of the manuscript being described. Provide a `@when` attribute of '1985-01'.
4. Similarly mark the place (Hexham, Northumberland, England, UK) as an `<origPlace>` with a `@ref="#hexham"` to point to the `<place>` you made earlier. You could also surround the text with an `<orgName>` if you want to indicate that this is an organizational name. As before you could mark Bunting's name.

#### Recoding `<additional>` information about your `<surrogates>`

At the end of your `<msDesc>` you can include an `<additional>` element which stores other information such as `<adminInfo>` (for recording administrative events of the object), `<listBibl>` (for listing bibliographic citations about the object), and `<surrogates>` (for listing additional representations of the object).
1. Change the final paragraph to an `<additional>` element with a `<surrogates>` inside that containing all the text.
2. Modify the URL given to be a `<ptr>` with a `@target` attribute.

If you get stuck, compare your work to [this enhanced file](../w-owen-letter-example-msdesc.xml) of a Wilfred Owen manuscript letter.
