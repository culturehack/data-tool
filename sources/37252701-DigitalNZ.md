---
title: Digital NZ Search
publisher: National Library of NZ
categories: 
  - History
size: Huge
size_description: "25m+ records of items in NZ cultural collections"  

licences: 
  - "TERMS"
licence_description: "Custom API Terms for Non-Commercial and Commercial Use http://www.digitalnz.org/about/terms-of-use/developer-api-terms-of-use"

media: data
formats: 
  - JSON
  - XML
  - RSS
  - REST-API
update_frequency: unknown
contact_information: "Email: [develop@digitalnz.org](mailto:develop@digitalnz.org) Mailing List: [email@example.com](http://groups.google.com/group/digitalnz) Twitter: [@digitalnz](https://twitter.com/digitalnz)"
score: 5
link: "http://www.digitalnz.org.nz/developers"
---

[DigitalNZ](http://www.digitalnz.org.nz/about) is an initiative with more than 140 partners, led by the National Library of New Zealand allowing search across 25 million digital items.

> "Via the API you can submit a query to our search index and it will return information about the various NZ images, audio, video, magazines, documents, and web pages that we're aggregating from our content partners."

The quality and availability of the metadata varies considerably. 
The data available through DigitalNZ describes the digital items held by content partners across all walks of NZ life. You can use the APIs to search across the likes of titles, descriptions, dates, and creators of the material; as well as requesting thumbnails and the full metadata record for each item


## Used in Anger

Examples of prototypes made with the NZSearch API can be found at  <http://www.mixandmash.org.nz>

## Technical Information

<http://www.digitalnz.org.nz/developers>

Use requires signing up for an API key.

There are 4 main APIs 
* Search Records to query the DigitalNZ metadata search service.
* Custom Search Records to query a custom service built with the Search Builder Tool.
* Get Metadata for a specific record.
* List Content Partners for a list of DigitalNZ contributors.

The aggregation service collects only the metadata that describes the digital content, but these APIs also return pointers to the item objects and thumbnails in external collections.


<http://www.digitalnz.org.nz/about/reusing-items-found-on-digitalnz>
 
The rights do not extend to use of digital objects or large thumbnails (as accessible 
through the large_thumbnail_url field). If you wish to use any object or large thumbnail, that is not openly licensed, then we encourage you to contact the appropriate content owners for their permission.
 
<http://www.digitalnz.org.nz/about/terms-of-use/developer-api-terms-of-use>
 
 
Wrappers and libraries are available for the v2 API in Ruby, Python, PHP, Perl, JS, ObjectiveC

<http://www.digitalnz.org/developers/code-samples-and-libraries>