---
title: Feedbooks API
publisher: Feedbooks
categories: 
  - Literature
size: Medium
size_description: "100,000+ entries for ebooks, around 10,000 free to download under Open licenses."  

licences: 
  - "PD"
licence_description: "Metadata is open. Many Public Domain entries for download, but also contains commercial and CC releases."

media: data

formats: 
  - ATOM
  - OPDS
  - REST-API
update_frequency: daily
contact_information: "Support: [https://feedbooks.zendesk.com/home](https://feedbooks.zendesk.com/home) Twitter: [@feedbooks](https://twitter.com/feedbooks)"
score: 4
link: "http://www.feedbooks.com/api"
---

[http://www.feedbooks.com/about](Feedbooks) is an online eBook retailer and self-publishing platform, who also make ebooks of public domain literature (fiction and non-fiction) available for free at [http://www.feedbooks.com/publicdomain](http://www.feedbooks.com/publicdomain) via a comprehensive API.

Most of the available public domain texts (apx 4,000) seem to be sourced from Project Guttenberg, and are available to download as ePub, Mobi (kindle) and PDF. However, there are also entries for around 6,000 [new, original books](http://www.feedbooks.com/original) released under open CC licenses. 

Feedbooks actively encourages [self-publishing](http://www.feedbooks.com/help/self-pub-howto) allowing anyone to publish to the public domain or distribute work through the site. They have an online ebook creation system (requires signin), and an [HTML to Feedbooks parser](http://www.feedbooks.com/labs) available.

Their commercial catalogue contains ebooks released from many different publishers in multiple formats: entries for commercial books also show if the download for sale contains DRM. [E.g. Creation Stories by Alan McGee ](http://www.feedbooks.com/item/633824/creation-stories)

The catalogue is linked to social reading applications such as ReadMill, GoodReads and LibraryThing.

## Example Entry

The Great Gatsby
<http://www.feedbooks.com/book/1122/the-great-gatsby>

* Has editions to download in ePub, Kindle and PDF.
* Has an informational blurb about the novel
* Is cross-linked to author <http://www.feedbooks.com/author/201>
* Is categorised [Fiction](http://www.feedbooks.com/books/top?category=FBFIC000000) and [Literary](http://www.feedbooks.com/books/top?category=FBFIC0190000)
* The page also contains a word count and estimate of time to read.

## Used In Anger

[Readmill](https://readmill.com/) makes the feedbooks catalog available within its iOS app.


## Technical Details

The site has a comprehensive REST API, based on ATOM protocol, documented at <http://www.feedbooks.com/api>

The full catalog is available at [http://www.feedbooks.com/catalog.atom](http://www.feedbooks.com/catalog.atom).

They use the [Open Publishing Distribution System (OPDS)](http://opds-spec.org) Catalog 1.0 specification. This is based on ATOM, and provides methods for navigation and discovery of books, and methods for download of the actual files.

You do not need a key to access the API, but there are some simple etiquette requests around use.

Feedbooks labs have published an [HTML to Feedbooks](http://www.feedbooks.com/labs) parser for sending formatted HTML directly to the service. It's written in Ruby and available on GitHub at <https://github.com/zetaben/Html2Feedbooks>.