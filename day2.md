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
