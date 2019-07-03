---
layout: page
title:  "Day 3"
permalink: /day3.html
---

# Day 3 (3 July)

Advanced TEI encoding, XPath for searching

|Time   | Topic   | Type |
|---|---|---|
|9.30	| Seminar 6: Enriching TEI metadata [CO] | Presentation |
| 10.30  | Exercise: Enriching the metadata of the Bunting notebook   |  Practice |
| 11.30	| Seminar 7: Intro to XPath [CO] | Presentation |
| 12.30   | Exercise: XPath searching and calculations  | Practice  |
| 14.00 (Senate House Library) | Seminar 8: Open Discussion on editing and projects with rare books and manuscripts [CO] | Presentation |
| 16.00  |  Library Time |  Senate House Library |

## Readings

Richard Gartner, *Metadata for digital libraries: state of the art and future directions.* Available from: [http://www.jisc.ac.uk/media/documents/techwatch/tsw_0801pdf.pdf](http://www.jisc.ac.uk/media/documents/techwatch/tsw_0801pdf.pdf).

––. [*Metadata: Shaping Knowledge from Antiquity to the Semantic Web*](https://www.springer.com/gp/book/9783319408910), Springer, 2016.

Michael Kay, [*XSLT 2.0 and XPath 2.0: A Programmer's Reference*](https://books.google.co.uk/books?id=lK4vGUcQFs4C&printsec=frontcover&source=gbs_ge_summary_r&cad=0#v=onepage&q&f=false), 4th ed. Wiley, 2008.

## Enriching TEI Metadata

1. Access the slides [here](https://docs.google.com/presentation/d/1nOJTSho-H37Hlrerfdt31ux0vsPL4bEh5tiPPWyeGTw/edit?usp=sharing).

If you want to see a massive TEI header (with funders, donors, and all kinds of additional info), check out one of the [Mark Twain Project's files](MTDP10364.xml) for Mark Twain's *Autobiography*, vol. 3 (2015).

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

1. Comment out the `<p>` tag within the `<sourceDesc>` in the current XML file.

1. Expand the existing `<msIdentifier>`.

2. Let's have a look at the metadata provided by library, and see if it could go in an `<msIdentifier>`.

3. Take the information in this paragraph and expand the `<msIdentifier>`.

4. Note how elements are prescribed to appear in a particular order (from greatest level of granularity to more specific). Notice that most elements cannot be repeated (some like `<collection>` and `<altIdentifier>` can be).

5. When you've finished creating the `<msIdentifier>` delete the remains of the first `<p>` from the basic source description. What should have is something like this:

```
<msIdentifier>
                  <country>United Kingdom</country>
                  <region>County Durham</region>
                  <settlement>Durham</settlement>
                  <institution> Durham University </institution>
                  <repository>Palace Green Library</repository>
                  <collection>Basil Bunting Collection </collection>
                  <idno type="folio">ff. 1-24, 26-27</idno>
                  <altIdentifier>
                     <idno>Item no. 18.</idno>
                  </altIdentifier>
                  <msName>Last Working Notebook</msName>
               </msIdentifier>


```

#### Recording `<msContents>`

The `<msContents>` acts as a place to store structured information about the intellectual contents of a manuscript. It gives a place for a summary of the contents of the manuscript and multiple `<msItem>` elements to form something like a table of contents.

1. Add an `<msContents>` (your document will not be valid. It should have a red line).

2. Create a `<summary>`, which acts as a summary for the intellectual content.
3. Add an `<msItem>` element.

3. Add a sibling `<author>` element.

4. Surround 'English.' with a `<textLang>` element.

5. Add an `@mainLang` attribute with a value of 'en' (the ISO language code for 'English')

6. Add a `@ref` attribute to the `<author>` and point to your `<person>` for Basil Bunting, or point to a VIAF entry.

7. As this `<msItem>` is recording information for this particular item we also want to give it a `<title>.` Create an empty `<title>` element and Manuscript Notebook c. 1970-1985" into it.

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

1. Add a ``<physDesc>``.
2. Now nest within `<phyDesc>` an ``<objectDesc>`` with a ``<supportDesc>`` inside that.
3. Inside that ``<supportDesc>`` add a ``<support>``, and inside this complete the text from the library catalogue: e.g., "A XX-page notebook in the collection as ... recto and verso"
(You could wrap the element ``<material>`` around the word 'paper', but also you could add a ``@material`` attribute to ``<supportDesc>`` with a value of 'paper'. You could also categorise the object's form by adding a @form attribute on ``<objectDesc>`` with a value of 'folio'.)

4. After the closing ``</supportDesc>`` tag add a ``<layoutDesc>`` with a ``<layout>`` to record information about the physical layout. In this case "Written full width as a single column, with approximately [XX] lines per page"
5. To the ``<layout>`` element add a ``@columns`` attribute of '1', and a ``@writtenLines`` of 'XX'.
6. After the closing ``</objectDesc>`` add a ``<handDesc>`` with a ``@hands`` attribute with a value of '1'.
7. Inside the ``<handDesc>`` add a ``<handNote>`` with the remaining text "Written in Basil Bunting's hand in pen". (You might want to mark Bunting as a ``<persName>`` with a ref pointing back to the <person> for Basil Bunting.)

```
<physDesc>
                  <objectDesc form="folio">
                     <supportDesc material="paper">
                        <support>A single folio of <material>paper</material> ff.1-24, 26-27 only; rest of volume blank. Begins (f.1) ' haimasia drystone wall - Odessey [sic]'. ends (f.27) 'bat wing, owl song,' Begun c.1970</support>
                     </supportDesc>
                     <layoutDesc>
                        <layout columns="1" writtenLines="20">Written full width
                           as a single column, with approximately 20 lines per
                           page</layout>
                     </layoutDesc>
                  </objectDesc>
                  <handDesc hands="1">
                     <handNote>Written in <persName ref="#BB">Basil Bunting</persName>'s hand in pen.</handNote>
                  </handDesc>
               </physDesc>

```

#### Recording a useful `<history>`

The ``<history>`` element gives a place to detail the ``<origin>``, ``<provenance>``, and ``<acquisition>`` of the manuscript if available. In this case we have some minimal information about the origin of the manuscript.

1. Add a ``<history>`` element.
2. Select all the text of "This notebook was written by Basil Bunting in 1985 at ..." and surround it with a ``<origin>`` element.
3. Inside this mark '1985' as an ``<origDate>`` element. This is like the ``<date>`` element, but is specific to recording the origin date of the manuscript being described. Provide a `@when` attribute of '1985-01'.
4. Similarly mark the place (Hexham, Northumberland, England, UK) as an `<origPlace>` with a `@ref="#hexham"` to point to the `<place>` you made earlier. You could also surround the text with an `<orgName>` if you want to indicate that this is an organizational name. As before you could mark Bunting's name.

#### Recording `<additional>` information about your `<surrogates>`

At the end of your `<msDesc>` you can include an `<additional>` element which stores other information such as `<adminInfo>` (for recording administrative events of the object), `<listBibl>` (for listing bibliographic citations about the object), and `<surrogates>` (for listing additional representations of the object).
1. Change the final paragraph to an `<additional>` element with a `<surrogates>` inside that containing all the text (i.e., the page images I shared with you on [Day 1](day1.md)).
2. Modify the URL given to be a `<ptr>` with a `@target` attribute.

If you get stuck, compare your work to [this enhanced file](w-owen-letter-example-msdesc.xml) of a Wilfred Owen manuscript letter.

And [here](bunting_last-notebook-with-metadata.xml) is the spoiler file for the Bunting notebook.

## Seminar 7: Intro to XPath

Access the slides [here](https://docs.google.com/presentation/d/1MwKO_JRxP3LzFplbt19C516gZF6l-N36DO9fDHptXLU/edit?usp=sharing).

### Exercise: XPath querying and calculating

1. Download the [Bad Hamlet XML file](bad-hamlet.xml).
2. Find your XPath 2.0 box in the top left of your oXygen client.
3. Perform your first query: find all of the `<l>` elements.
4. How many lines are in *Hamlet*?
5. Write the full (i.e. don’t start your expression with //) path expression for finding all first-level `<div>` elements in the text.
6. Do the same for second-level `<div>`s.
7. Write an expression that finds all of Rosencrantz’s speeches. How many results do you get? How about Rosencrantz *and* Guildenstern?
8. Find the string length of each of Hamlet’s speeches.
9. Calculate the average character count of Hamlet’s speeches. If you need a guide of common kinds of count expressions, see
http://dh.obdurodon.org/functions.xhtml
10. Perform the same operation as you did for steps 3–5 except find Horatio. Compare the differences between his and Hamlet’s speech content.
11. Write an expression that finds each speech element that comes before a Hamlet speech.
12. Write an expression that finds all speeches that come before or after a Hamlet speech.
13. What does this expression return in the Hamlet file: `count(descendant-or-self::l) gt 2500`?

[Click here](xpath-answers.txt) for the answers.
