---
title: Title Of Dataset
publisher: Name of Publisher
categories: 
  - Art
  - Literature
  - Music
  - Performance
  - Fashion
  - Media
  - History
size: Medium
size_description: "The size and content of the database in human readable sentence."  
licences: 
  - "©"
  - "PD"
  - "T+C"
  - "CC0" 
  - "OGL"
  - "ODbL"
  - "CC-BY"
  - "CC-BY-NC"
  - "CC-BY-SA"
  - "CC-BY-NC-SA"
licence_description: "A human readable sentence about the license and any limitations."
media: data
formats: 
  - CSV
  - JSON
  - XML
  - RSS
  - OPDS
  - REST-API
update_frequency: daily
contact_information: "E-mail: [email@example.com](mailto:email@example.com) Twitter: [@example](https://twitter.com/example)"
score: 5
link: "http://data.culturehack.org/"
---

This is an example of how to create information about a dataset: make sure that the first sentence is a good description of the whole article.

It should say what KIND of data and information is in the dataset. What is it about? What things can you find out from it? Does it have pictures? Other rich media? Is it consistent or patchy? Is it geocoded (has lat/long or other geographic fields)?

We should add credits to any data here, with relevant links, if the publisher field is not sufficient.

It is written in [Markdown](http://daringfireball.net/projects/markdown/), which means you can do simple formatting in plaintext, and it will be automatically interpreted as a nice readable HTML document by places like Github, whilst remaining human readable.

## Used In Anger

This section is for detailing any prototypes made with this set. 

It should link out to any examples of prototypes made with the dataset if we know about them. For example, here is a [link to example.com](http://www.example.com/) which contains an example by a person.


If there aren't any, the blank file has "We haven't found any examples yet: let us know if you've made something."

## Technical Details

This section is the technical stuff: for a developer audience. Feels like a readme

### FOR REFERENCE: How the information sections work

All of the data sections at the bottom of an entry (size, licensing, contact info etc) are generated from the information you add at the top of a file.

The block of stuff at the top of one of these text files is a [YAML](http://yaml.org) data block - it's the simplest possible way of adding structured metadata to a plain text file. This allows you to add a bit of structured data to the record. 

### Culture Hack 'Hackability' Scale

We allow you to RATE the 'hackability' of this dataset from 1-5, where 5 is best. To make your life easier, we've written a guide to how we think those ratings work from the point of view of a creative technologist. It's a rating scale that's about *doing* things with the data, rather than espousing a certain philosophy about how you should release data or create the sematic web. Oh, apart from the bit where we snark about MS SQL, but that's because we actually had that problem on a hack day once.


#### 5/5

* Passes the P test: you could do something in an hour with a language beginning with P
* Lots of records, all pretty much complete
* Clean data (eg dates)
* Pretty pictures and rich content available, not just metadata
* Well supported, with good documentation
* Frequent updates, active community or responsive owner

#### 4/5

* It's going to take me 3 hours to make this work, but I'll do that because it's going to make something awesome.
* 60% good data: could use some cleaning up, but not terrible. I could work around it in code.
* A bit awkward to work with - perhaps flat files rather than a nice dynamic API - or an overly complex implementation.
* Documentation makes me mildly punchy
* Might not have a lot of pretties, images, rich media associated with it.

#### 3/5

* Kind of nearly there, but might not be enough to do something awesome: I'd need to be really motivated to work with this, or for it to be exactly the right information for my idea.
* Feels a bit flat - data, but not very dynamic or deep
* A CSV with 400 things in it, and quite a few gremlin characters

#### 2/5

* I would complain quite loudly if you asked me to work with this in the context of paying me a good salary.
* An MS SQL Database
* A spreadsheet made by an idiot
* Poor or absent documentation

#### 1/5

* I will assume you are taking the piss, look at you funny and walk away if you ask me to hack with this (and if I eventually do, it will be to prove a point about what an idiot you are: eg. Hansard.)
* A PDF
* An actual piece of paper


### Categories

These are deliberately kept broad and the list short. You can apply more than one. Adding new ones may well break everything: they need to be configured in code

* Visual Art
* Literature
* Music
* Performance
* Fashion
* Media
* History


### Size of data sets:

* Small: Less than 10k
* Medium: 10,000+
* Huge: 1 million +

With a plain text description of what it contains against *size_description:* 

### License details

See <https://github.com/culturehack/data-tool/blob/master/documentation/reference-licenses.csv> For a list of all the license types and abbreviations we've used. 

They're kept in that seperate file so I don't have to update them in so many different places in the code :)


### Formats

This isn't an exhaustive list: it _shouldn't_ break if you add new formats!
TODO: move this in to a reference list like the licenses, at some point in the future...

* CSV
* JSON
* XML
* RSS
* REST-API
* OPDS


