---
title: National Maritime Museum API
publisher: Royal Museums Greenwich
categories: 
  - History
size: Medium
size_description: "Ooh, average-large museum sized..." 
licences: 
  - "T+C"
  - "CC-BY-NC-SA"
licence_description: "Collection data and some images under CC-BY-NC-SA, images may have variant licenses. [API Terms](http://collections.rmg.co.uk/page/7d7ded6fb50d6031e2884961a200b7f5.html) "
media: [data, images]
formats: 
  - REST-API
  - XML
  - SOLR
update_frequency: unknown
contact_information: ""
score: 4
link: "http://collections.rmg.co.uk/page/76fd680cdfa46b8848f3a719e15a6772.html"
---

The National Maritime Museum is the world's largest maritime museum. It has [an API](http://collections.rmg.co.uk/page/76fd680cdfa46b8848f3a719e15a6772.html) that makes collection data and images available 

The museum also contribute to the [Flickr Commons](http://www.flickr.com/commons) at <http://www.flickr.com/photos/nationalmaritimemuseum/>

## Used In Anger

This section is for detailing any prototypes made with this set. We haven't found any examples yet: let us know if you've made something.

## Technical Details

The API is built on Apache Solr, and appears to return XML. The base URL is http://collections.rmg.co.uk/solr  (returns a 500)

It is not terribly well documented.

This sample query will find all records with ‘Nelson’ in the title, return the title and description and provide a facet count of each record type:
http://collections.rmg.co.uk/solr/?q=name:Nelson&facet=on&facet.field=type&fl=name,%20description