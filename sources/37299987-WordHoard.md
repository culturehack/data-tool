---
title: WordHoard
publisher: Martin Mueller / Northwestern University
categories: 
  - Literature
size: Huge
size_description: "The remote database contains tagged text for all of Shakespeare, Chaucer, Spenser, and early Greek Epics." 
licences: 
  - "©"
  - "T+C"
licence_description: "Software is under the [GNU](http://wordhoard.northwestern.edu/userman/dev-intro.html). Some texts and data within the system are free for non-commercial use, but have [complex underlying rights](http://wordhoard.northwestern.edu/userman/text-license.html). Read the documentation for more."
media: data
formats: 
  - JAVA
update_frequency: unknown
contact_information: "E-mail: [martinmueller@northwestern.edu](mailto:martinmueller@northwestern.edu)"
score: 4
link: "http://wordhoard.northwestern.edu/userman/index.html"

---
An application for the close reading and scholarly analysis of deeply tagged texts.

>The WordHoard project is named after an Old English phrase for the verbal treasure 'unlocked' by a wise speaker. It applies to highly canonical literary texts the insights and techniques of corpus linguistics, that is to say, the empirical and computer-assisted study of large bodies of written texts or transcribed speech. In the WordHoard environment, such texts are annotated or tagged by morphological, lexical, prosodic, and narratological criteria. They are mediated through a 'digital page' or user interface that lets scholarly but non-technical users explore the greatly increased query potential of textual data kept in such a form.

>It is a basic assumption of WordHoard that new kinds of historical, literary, or broadly cultural analysis will be supported through the forms of data access that are made possible when literary texts are treated in the manner of linguistic corpora. Deeply tagged corpora of course support more finely grained inquiries at a verbal or stylistic level. But more importantly, access to the words of a text at such microscopic levels also lets you look in new ways at the imaginative worlds created by those words.

>In its current release WordHoard contains the entire canon of Early Greek epic in the original and in translation, as well as all of Chaucer, Shakespeare, and Spenser. The section on Provenance, Copyrights, and Licenses provides detailed information about the texts.

Text Licenses 
Software http://wordhoard.northwestern.edu/userman/license.html

## Used In Anger

[Understanding Shakespeare](http://www.understanding-shakespeare.com) project by [Stephan Thiel](http://www.nand.io/visualisation/understanding-shakespeare) uses the data to create large-scale visualisations of Shakespeare plays, showing the dramatic structure, summaries, the character interrelations etc. Written in Processing, they use various NLP libraries to process the data. It's worth [looking at the work in progress videos](http://www.understanding-shakespeare.com/process.html) to see how code and visual changes interact in a creative process... 

## Technical Details


The database is accessed via a Java application. 

Working with the system locally requires Java 1.4 / MySql 5 / [ApacheAnt](http://ant.apache.org), and accesses the database over a web connection.

There is comprehensive documentation at http://wordhoard.northwestern.edu/userman/dev-intro.html