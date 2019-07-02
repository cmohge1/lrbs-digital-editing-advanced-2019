---
layout: page
title:  "Day 3"
permalink: /day3.html
---

# Day 3 (3 July)

Advanced TEI encoding, XPath for searching

|Time   | Topic   | Type |
|---|---|---|
|9.30	| Seminar 6: Enriching TEI metadata [CO] | Presentation | Exercise: Enriching the metadata of the Bunting notebook
| 10.30  | Exercise: Enriching the metadata of the Bunting notebook   |  Practice |
| 11.30	| Seminar 7: Intro to XPath part 1 [CO] | Presentation |
| 12.30   | Exercise: XPath searching and calculations  | Practice  |
| 14.00 (Senate House Library) | Seminar 8: Open Discussion on editing and projects with rare books and manuscripts [CO] | Presentation |
| 16.00  |  Library Time |  Senate House Library |

Metadata

1. Access the slides here.

### Exercise

Let's return to the Basil Bunting notebook from Day 1.

Consult the notebook metadata from the [Palace Green Library, Durham University](http://reed.dur.ac.uk/xtf/view?docId=ark/32150_s1ww72bb48x.xml#qxj-235), including:

**Title:** Last working notebook

**Reference:** 18
**Dates of creation:** [n.d.]
**Extent:** Ringbound notebook in plastic wallet (text on ff.1-24, 26-27 only; rest of volume blank).
Autograph.
**Contents:** words, phrases, lines for poems, quotations etc. Begins (f.1) ' haimasia drystone wall - Odessey [sic]'. ends (f.27) 'bat wing, owl song,' Begun c.1970 (information from Professor Peter Quartermain, 1990).

#### Recording `<msIdentifier>`

1. Expand the existing ``<msIdentifier>``. As you have a lot more experience editing XML files in oXygen now, the steps will sometimes be given in less detail.

2. Notice that the first paragraph mostly contains information that tells us where the manuscript is, in other words it identifies it and so this text could go in a ``<msIdentifier>``.

3. Take the information in this paragraph and expand the ``<msIdentifier>``.

4. Note how elements are prescribed to appear in a particular order (from greatest level of granularity to more specific). Notice that most elements cannot be repeated (some like `<collection>` and `<altIdentifier>` can be).

5. When you've finished creating the `<msIdentifier>` delete the remains of the first `<p>` from the basic manuscript description.

#### Recording `<msContents>`

The second paragraph contains information that will be useful in compiling an `<msContents>`. This acts as a place to store structured information concerning the intellectual contents of a manuscript. It gives a place for a summary of the contents of the manuscript and multiple `<msItem>` elements form something like a table of contents of works in the document.

1. Rename the second paragraph element as `<msContents>` (your document will not be valid. It should have a red line).

2. Highlight the text inside from the start to the end of "Collected Letters'.", press control-e to 'surround with element' and wrap this in a `<summary>`. This acts as a summary for the intellectual content
Highlight the remaining text and surround it with a `<msItem>` element.

3. Delete the 'Authored by' and enter the appropriate author information within an `<author>` element.

4. Surround 'English.' with a `<textLang>` element.

5. Add an `@mainLang` attribute with a value of 'en' (the ISO language code for 'English')

6. Add a `@ref` attribute to the `<author>` and point to your `<person>` for Basil Bunting.

7. As this `<msItem>` is recording information for this particular item we also want to give it a `<title>.` Create an empty `<title>` element and cut and paste "Letter To Leslie Gunston / The Wrestlers." into it.

Your <msContents> should now look something like:

```
<msContents>
<summary>This final working notebook by Bunting consists of notes and other fragmentary thoughts about literature &amp;c...</summary>
<msItem>
<author>Basil Bunting (1900–1985)</author>
<textLang mainLang="en">English</textLang>
<title>Manuscript Notebook c. 1970–1985.</title>
</msItem>
</msContents>
```
#### Adding `<physDesc>`
The next paragraph happens to have a lot of information about the physical aspects of the manuscript. Let's turn it into a ``<physDesc>``.

1. Rename the ``<p>`` to be a ``<physDesc>``
2. Now nest within `<phyDesc>` an ``<objectDesc>`` with a ``<supportDesc>`` inside that.
3. Inside that ``<supportDesc>`` add a ``<support>``, and inside this put the text "A xxx-page notebook in the collection as ... recto and verso"
(You could wrap the element ``<material>`` around the word 'paper', but also you could add a ``@material`` attribute to ``<supportDesc>`` with a value of 'paper'. You could also categorise the object's form by adding a @form attribute on ``<objectDesc>`` with a value of 'folio'.)

4. After the closing ``</supportDesc>`` tag add a ``<layoutDesc>`` with a ``<layout>`` to record information about the physical layout. In this case "Written full width as a single column, with approximately [XX] lines per page"
5. To the ``<layout>`` element add a ``@columns`` attribute of '1', and a ``@writtenLines`` of 'XX'.
6. After the closing ``</objectDesc>`` add a ``<handDesc>`` with a ``@hands`` attribute with a value of '1'.
7. Inside the ``<handDesc>`` add a ``<handNote>`` with the remaining text "Written in Basil Bunting's hand in pen". (You might want to mark Bunting as a ``<persName>`` with a ref pointing back to the <person> for Basil Bunting.)

#### Recording a useful `<history>`

The ``<history>`` element gives a place to detail the ``<origin>``, ``<provenance>``, and ``<acquisition>`` of the manuscript if available. In this case we have some minimal information about the origin of the manuscript.

1. Rename the second-to-last paragraph to a ``<history>`` element.
2. Select all the text of "This notebook was written by Basil Bunting in 1985 at ..." and surround it with a ``<origin>`` element.
3. Inside this mark '1985' as an ``<origDate>`` element. This is like the ``<date>`` element, but is specific to recording the origin date of the manuscript being described. Provide a `@when` attribute of '1985-01'.
4. Similarly mark the place (Hexham, Northumberland, England, UK) as an `<origPlace>` with a `@ref="#hexham"` to point to the `<place>` you made earlier. You could also surround the text with an `<orgName>` if you want to indicate that this is an organizational name. As before you could mark Bunting's name.

#### Recording `<additional>` information about your `<surrogates>`

At the end of your `<msDesc>` you can include an `<additional>` element which stores other information such as `<adminInfo>` (for recording administrative events of the object), `<listBibl>` (for listing bibliographic citations about the object), and `<surrogates>` (for listing additional representations of the object).
1. Change the final paragraph to an `<additional>` element with a `<surrogates>` inside that containing all the text.
2. Modify the URL given to be a `<ptr>` with a `@target` attribute.

If you get stuck, compare your work to [this enhanced file](w-owen-letter-example-msdesc.xml) of a Wilfred Owen manuscript letter.

And [here](TBD) is the spoiler file for the Bunting notebook.
