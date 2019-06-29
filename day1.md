---
layout: page
title:  "Day 1"
permalink: /day1/
---

# Monday, 1 July: Welcome, TEI encoding refresher

|Time   | Topic   | Type |
|---|---|---|
|12.30	| Registration | |
| 13.00	  | Senate House Library Talk	| Presentation |
| 14.00 | Seminar 1: Welcome; editorial/TEI primer; misconceptions of TEI [CO] | Presentation |
| 15.00 | Exercise 1: Editing a text in TEI: Basil Bunting's final notebook | Practice |
| 16.00 | Seminar 2: Advanced project planning and development: working with authority lists, writing encoding guidelines, file naming, etc. [LW] | Presentation |

## Readings

1. Hans Walter Gabler, ["Theorizing the Digital Scholarly Edition,"](https://www.openbookpublishers.com/htmlreader/978-1-78374-363-6/ch6.html#_idTextAnchor018) in *Text Genetics...* (Open Book, 2018).
2. Elena Pierazzo, *Digital Scholarly Editing* (Ashagte, 2015), ch 5 (on workflow)
3. James Cummings, ["Misconceptions of the TEI"](../readings/cummings2018-myths-of-tei.pdf), *Digital Scholarship in the Humanities* 2018.
4. Tara Andrews, ["The Third Way: Philology and Critical Edition for a Digital Age"](https://www.academia.edu/2510270/The_Third_Way_Philology_and_Critical_Edition_in_the_Digital_Age), *Variants* 10 2013.

## Seminar 1

### Editorial / TEI primer

**Lecture notes:**

* **What is the purpose of a digital edition?**
  - Something to be read or used?
  - *Classical* and *digital thinking*: output-driven v. user-centric design (Rehbein 2010)
  - Modelling comes before editing, according to this view. This is the analytical process of establishing the editorial principles and the purpose of the edition, including its intended audience (For more on modelling, see the Day 2 notes from the [Intro module](https://cmohge1.github.io/lrbs-digital-editing-intro-2019/day2/#text-modelling).)
  - "why-what-how" approach of functional and semantic modelling. Note how the "why" question comes first.
  - declaration of principles based on the documents but also the formal computational model of the edition.
  - the tyranny of the page: think first about "page" design (traditional) or think about comutational features?
  - Wireframing:

|Site Banner                     |
|---|
| Home &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  About &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Editions &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Search &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Contact   |

|Text Menu | Text Transcription | Facsimile |
|---|---|---|
|Item1 <br/> Item2 <br/> Item3  | Transcribed text...  | ![ms-img](billy-budd-1.png)   |

|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Footer &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |
|---|
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Site information &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |

* [Click here](../MEL.pdf) for an example of a recent wireframe created by Performant Software for a re-design of the Melville Electronic Library. And see how it compares to what was eventually adopted at [https://mel.hofstra.edu/](https://mel.hofstra.edu/) for the re-design (image courtesy Nick Laiacona).

* But of course this is an interface-driven approach to the "what" question.
* Edition as image and data (Buzzetti 2009); edition as analysis (Ohge and Tupman, 2020).
  - nature of documents and editorial principles (for more on this consult the [Intro module](https://cmohge1.github.io/lrbs-digital-editing-intro-2019/))
  - list of features and analysis tools (what)
  - list of parameters about what in the data should be featured in the interface
  - list of research questions and aims
  - list of user needs
  - technological requirements and available resources (static or live, life expectancy, management)

### Misconceptions of TEI

**Lecture notes:**
* TEI aspires to generality and flexibility, which is both an advantage and a disadvantage.
* TEI is not everything for everyone.
* Cummings: "it formalizes a history of the community’s concerns for textual distinctions and exemplifies understandings of how to encode them and how these have developed over its existence; it acts as a slowly developing consensus-based method of structuring those distinctions..."
* Some misconceptions:
  - The TEI is XML (and XML is broken or dead)
  ("What is written in
the Guidelines in prose is more important than the
rules of any generated schema," p. 2).
  - The TEI is too big and complex ("the TEI is a
modular framework that allows a project, or a subcommunity to choose precisely which elements to make available and where appropriate build processing workflows based on only those elements," p 2.)
  - The TEI is too simple or general
  - There is no way to change the TEI
  - You have to be a TEI guru to customize the TEI
  - The TEI is too small (or does not have `<mySpecialElement>`)
  - You cannot get from TEI to $myPreferredFormat
  - If you use TEI you must learn other technologies
  - You cannot do stand-off markup in XML (or TEI)
  -  XML (and TEI) cannot handle overlapping hierarchies
  - There are no tools for the TEI
  - Interoperability is impossible with the TEI
  - The TEI is only for digital editions, I am doing $otherThing
  - The TEI is only for Anglophone or Western works
*

### Exercise: Editing Basil Bunting's Final Notebook

1. Download the images of the first few pages of the notebook (please note that these are the purposes of the this exercise only and are not to be distributed.)
[Page 3]()
[Page 4]()
[Page 5]()
2. Create a list following the what-why-how principles of modelling an edition.
3. Download the [xml file](../bunting_last-notebook.xml) of the notebook's first few pages, with transcription and minimal encoding in TEI.
4. Encode as many features in TEI as you see fit, based on your modelling exercise in (1).
5. Sketch out a wireframe (either on paper or digitally) of a proposed interface for the edition.

If you need any help with TEI encoding, consult the TEI workshop slides produced for the [IES-ATNU Textual Editing in the Digital Workshops](https://research.ncl.ac.uk/atnu/news/textualeditinginthedigitalage.html), including:
- TEI Core module
- TEI for Transcription

See also the [TEI Guidelines](https://www.tei-c.org/release/doc/tei-p5-doc/en/html/index.html).  

## Seminar 2: Project Planning and Development

1. Download this [zip file](../ExampleProject_July2019.zip) of an example project directory.
2. Download the [slides](../PlanningYourProject_Williamson_July2019.pdf).
