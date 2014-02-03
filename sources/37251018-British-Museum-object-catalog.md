---
title: British Museum object catalog
publisher: British Museum
categories: 
  - History
size: Huge
size_description: "More than 2 million+ object records. Around 800,000 have images."
licenses:
  - "T+C"
licence_description: "Non-commercial and research use only under a [British Museum specific open license](http://collection.britishmuseum.org/licensing.html). Images are under a different license."
media: text
formats: 
  - RDF
  - SPARQL
  - JSON
  - XML
update_frequency: Daily
contact_information: "Queries about the database, e-mail [collectiondatabase@britishmuseum.org](mailto:collectiondatabase@britishmuseum.org) Issues to [Web@britishmuseum.org](mailto:Web@britishmuseum.org)"
score: 5
link: "http://collection.britishmuseum.org/"
published: true
---

The British Museum was the first national public museum in the world - founded in 1753 -  and remains one of the most famous museums in the World. Its collections contain over 8 million objects spanning the history of the world's cultures: from [carvings of reindeer from 13,0000BC](http://www.britishmuseum.org/research/collection_online/collection_object_details.aspx?objectId=808748&partId=1) to  [cardboard models of computer monitors from Singapore](http://www.britishmuseum.org/research/collection_online/collection_object_details.aspx?objectId=3028508&partId=1&images=true&from=ad&fromDate=2000&sortBy=fromDateDesc&page=16).

The museum holds over 3 million individual objects in its collection, around 2 million of which are represented within this database. 800,000+ have images - but these are provided under  different licenses depending on use.

There is a [web interface to search the collection](http://www.britishmuseum.org/research/collection_online/search.aspx) to get a feel for the content of the data. The collection database also returns HTML representations - for example <http://collection.britishmuseum.org/resource?uri=http://collection.britishmuseum.org/id/object/EOC3130> is the entry for _Hoa Hakananai'a_, a Rapanui (Easter Island) statue.



## Technical Details ##

The data is modelled using the [CIDOC schema](http://www.cidoc-crm.org) in an RDF format, and there is a [SPARQL endpoint](http://collection.britishmuseum.org/sparql) available. This can be a little tricky to use if you’re used to REST interfaces or CSV files, but there are some example queries you can use and an example AngularJS front end at http://collection.britishmuseum.org/angularsparqldemo/ with the Angular and Django source available at stash.researchspace.org/scm/an/angularsparqldemo.git.

As per the [help page](http://collection.britishmuseum.org/help.html), the SPARQL endpoint can be called to return XML or JSON representations from SELECT queries, and RDF/XML, Turtle and NTriple from CONSTRUCT queries.

<http://collection.britishmuseum.org/sparql.xml?query=>   returns xml (in the browser this is a downloadable file)

<http://collection.britishmuseum.org/sparql.json?query=> returns json

The help page also details the URI scheme. Static [data dumps](http://collection.britishmuseum.org/dumps/) are available.
