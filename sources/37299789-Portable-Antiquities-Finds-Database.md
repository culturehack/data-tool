---
title: Portable Antiquities Scheme Finds Database
publisher: Portable Antiquities Scheme / British Museum
categories: 
  - History
size: Medium
size_description: "921,100 objects within 588,349 records (December 2013)" 
licences: 
  - "CC-BY-SA"
licence_description: "Everything appears to be CC Attribution-Sharealike licensed, including most images."
media: [data,images]
formats: 
  - RSS
  - OAI-PMH
  - XML
  - JSON
update_frequency: 
contact_information: "E-mail: [info@finds.org.uk](info@finds.org.uk) Twitter: [@findsorguk](https://twitter.com/findsorguk)"
score: 5
link: "http://finds.org.uk/database"
---

The [Portable Antiquities Scheme Finds Database](http://finds.org.uk/database) is maintained by the British Museum, and contains records of archaeological finds reported by the public - mostly metal detector enthusiasts.

The database contains around [383k images](http://finds.org.uk/database/images) which are mainly licensed as [CC-BY-SA](http://creativecommons.org/licenses/by-sa/3.0/), and is also cross-referenced with two coin databases - the Oxford University Celtic Coin Index (CCI) and Cardiff University's Iron Age and Roman coins of Wales project (IARCW).


An [entry pulled at random for a lead pilgrim's badge](http://finds.org.uk/database/artefacts/record/id/577124) is incredibly rich, with images, descriptions, dimensions and geolocation information.

![PAS PILGRIM BADGE ID: PUBLIC-A15598](http://finds.org.uk/images/rtyrrell/medium/mount,P20badge,P20,282,29.jpg.pagespeed.ce.Lh7CrcBAFx.jpg)

It's cross-referenced against similar objects in the British Museum, and the [Open Domesday Book](http://domesdaymap.co.uk) site too!

There's a clear controlled vocabulary that's described on the site and reflected in the URL structure. 

* [Object terms](http://finds.org.uk/database/terminology/objects)
* [Periods](http://finds.org.uk/database/terminology/periods)
* [Denominations](http://finds.org.uk/database/terminology/denominations)
* [Mints](http://finds.org.uk/database/terminology/mints)
* [Rulers](http://finds.org.uk/database/terminology/rulers)
* [Ascribed cultures](http://finds.org.uk/database/terminology/cultures)
* [Workflow stages](http://finds.org.uk/database/terminology/workflows)
* [Preservation states](http://finds.org.uk/database/terminology/preservations)
* [Discovery methods](http://finds.org.uk/database/terminology/methods)
* [Finds of note reasons](http://finds.org.uk/database/terminology/notes)
* [Materials](http://finds.org.uk/database/terminology/materials)
* [Methods of manufacture](http://finds.org.uk/database/terminology/manufactures)
* [Landuses](http://finds.org.uk/database/terminology/landuses)
* [Surface treatments](http://finds.org.uk/database/terminology/surfaces)
* [Primary activities](http://finds.org.uk/database/terminology/activities)

Different levels of detail in the data are available to registered users. 

There's a lot of supporting information on the site too, including a useful guide to [lifting and conserving artefacts](http://finds.org.uk/conservation), and [annual statistics compiled for the DCMS](http://finds.org.uk/news) about the number of finds.


## Used In Anger

The site itself is a really good example of what can be done with the dataset (which is surprisingly rare for culture data releases like this, sadly). Good work BM! No, wait: it's all the work of one man: 
> "was designed and built by the Scheme's ICT Adviser, Daniel Pett, over a period of 12 months."

Good work Daniel Pett!

The site lists [research undertaken with the database](http://finds.org.uk/research/projects), and they [cross publish images to flickr](http://www.flickr.com/photos/finds). There's also a nice map visualisation as part of the site (all data is geolocated, but degraded slightly to parish level presumably to protect areas from hordes of treasure hunters...), and a use of [TheyWorkForYou data to log finds by constituency](http://finds.org.uk/news/theyworkforyou/finds/constituency/Aberavon).

### Ideas ###

You could cross reference the [Publications](http://finds.org.uk/database/publications) list with something like OpenLibrary, as there are very few ISBNs listed.

It might be interesting to make a map visualisation of finds by  [Period](http://finds.org.uk/database/terminology/periods), [Ascribed cultures](http://finds.org.uk/database/terminology/cultures) and location: is it possible to map the history of the UK through small finds?

## Technical Details

Individual records are available as XML, JSON, GEOJSON and RDF representations; searches can be returned as RSS/ATOM. Alternate formats can be returned by appending the URL, e.g. ```/format/rss``` or ```/format/json/```.

The site itself provides:

* [Source code](https://github.com/portableant/Beowulf---PAS)
* [OAI-PMH endpoint](http://finds.org.uk/database/oai)
* [RSS feeds](http://finds.org.uk/info/advice/rss)
* [Analytics](http://finds.org.uk/analytics)
* [Github code changes](http://finds.org.uk/info/github)


OAI is a fairly complex-looking specialist API designed for exchanging archive data: the site has a [help page with more information](http://finds.org.uk/database/oai).

Also, [awesome 404](http://finds.org.uk/database/images/image/id/440526/format/jpg).