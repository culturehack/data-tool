---
title: Cooper Hewitt Collections Data
publisher: Smithsonian
categories: 
  - History
size: Medium
link: "http://www.cooperhewitt.org/collections/data"
licences:
  - CC0
licence_description: "Metadata under Creative Commons Pulic Domain dedication, which offers no restrictions as to re-use of the data. Image rights are managed by [Art Resource](http://www.cooperhewitt.org/image-rights) and are not covered by the release."
formats:
  - JSON
  - REST-API
contact_information: "See [contact page](http://www.cooperhewitt.org/contact)"
---

The Smithsonian's [Cooper-Hewitt National Design Museum](http://www.cooperhewitt.org/) has published the metadata about its collection of over 120,000 design-related objects as flat data on [GitHub](https://github.com/cooperhewitt/collection)

The collection is available to browse on the [Cooper Hewitt site](http://collection.cooperhewitt.org) and the museum website is being [rebuilt around the new collection data](http://labs.cooperhewitt.org/2012/lost-collection-alpha/).


The data is not complete - it's about 60-70% of the whole collection at December 2013 -  and consists mainly of 'tombstone' data (accession numbers, dates, basic factual information)  with only the bare minimum about most of the objects.


## Used in Anger

The Cooper-Hewitt have a number of examples of use of the collection data and API on their [Labs blog](http://labs.cooperhewitt.org/category/collection-data/)

[Object Phone](http://labs.cooperhewitt.org/2013/object-phone/) sends back information about an object if you text its UID to a shortcode.

## Technical Info

The Cooper Hewitt has a [page for Developers](https://collection.cooperhewitt.org/developers/), and also publish a 'RESTish' API at <http://collection.cooperhewitt.org/api> - they suggest that Developers [register for an API key](https://collection.cooperhewitt.org/signin/?redir=api/keys/register/).

The museum requests that you credit them where possible, and contribute any improvements back to the museum. 

They suggest using [machine tags](https://github.com/straup/machinetags-readinglist) to link images on Flickr or 3D objects in Thingiverse back to the collection: eg [ch:object=18521077](http://collection.cooperhewitt.org/objects/18521077/)

There's some work to create [concordances](https://github.com/cooperhewitt/collection/blob/master/README.CONCORDANCES.md)  - initially around [people](http://collection.cooperhewitt.org/concordances/people/) on the collections site, with data being published to [GitHub](https://github.com/cooperhewitt/collection/tree/master/meta) as csvs. (Beware the deprecated Concordances repo!)

They're [implementing oEmbed](https://collection.cooperhewitt.org/oembed/) for links and photos of collection objects.
> oEmbed is a format for allowing an embedded representation of a URL on third party sites. The simple API allows a website to display embedded content (such as photos or videos) when a user posts a link to that resource, without having to parse the resource directly.
<http://oembed.com>

And they are not joking when they say their [URL Shortener](http://cprhw.tt) is awesome.