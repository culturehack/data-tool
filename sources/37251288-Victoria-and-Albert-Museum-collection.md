---
published: false
title: Victoria and Albert Museum collection
size: Huge
size_description: Over 1 million objects in the collection.
licenses:
  - "T+C"
licence_description: "Data and images can be used for personal & educational purposes under the [API Terms](http://collections.vam.ac.uk/information/information_apiterms). [Commercial use](http://collections.vam.ac.uk/information/information_commercialuse) requires a license."
contact_information: "Contact Form <http://collections.vam.ac.uk/>"
formats: 
  - JSON
  - XML
  - REST-API
categories: 
  - Art
  - Fashion
  - History
link: "http://www.vam.ac.uk/api/"
publisher: Victoria and Albert Museum
---

> The Victoria and Albert Museum, London, is the world's leading museum of art and design. Our aim is to enrich people’s lives by promoting knowledge, understanding and enjoyment of the designed world.

The V&A has a [vast collection of objects](http://collections.vam.ac.uk) covering art, design and fashion. They also have one of the very few [digital art collections](http://www.vam.ac.uk/page/d/digital-art-and-design/) that includes early computer art from the 1960s.

They've made their collections catalogue [available via a simple API](http://www.vam.ac.uk/api/).

The whole collection can be searched at <http://collections.vam.ac.uk> to get a taste of the content available. It currently contains 1.1m+ objects and 375k+ images.

Images can be [used in a non-commercial context](http://collections.vam.ac.uk/information/information_gettingstarted), and there are a few [requirements for rate limiting requests](http://collections.vam.ac.uk/information/information_apiterms) and crediting that you should be aware of in the Terms and Conditions.

## Used in Anger ##

The V&A themselves create products on top of their API - for instance, a [Django app for creating iPad friendly 'labels'](http://www.vam.ac.uk/b/blog/digital-media-va/open-sourcing-digital-labels) for use in galleries which has been [released on GitHub](http://vanda.github.io/DigitalLabels/) under the BSD license.

Other examples may turn up on the [V&A Digital Media Blog](http://www.vam.ac.uk/b/blog/digital-media)

## Technical Details ##

The RESTful API returns JSON, XML (in paginated format), and a JSONP wrapper. 

The documentation at <http://www.vam.ac.uk/api/> is good and includes examples. Rudimentary [query builders in an HTML interface](http://www.vam.ac.uk/api/qb) are available.

Places have been geo-referenced but the data may contain anomalies.

Images can be called directly through the API at a variety of pre-cut sizes.