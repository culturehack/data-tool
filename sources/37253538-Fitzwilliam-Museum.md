---
title: Fitzwilliam Museum
publisher: Fitzwilliam Museum / University of Cambridge
categories: 
  - Art
  - History
size: Medium
size_description: "170,000 records, many including thumbnail images." 
licences: 
  - "©"
  - "CC0"
  - "T+C"
  - "CC-BY-NC-ND"
  - "CC-BY-SA"
licence_description: "Basic Data is CC0, extended records are CC-BY-SA. Low-res or PD images are under CC license, high res or in copyright are case-by-case clearable through the museum. Some images are under a retired No Derivatives CC license version: so, no collages, remixes or fiddling around with them!"
media: [data, images]
formats: 
  - JSON
  - XML
  - DublinCore
  - SPARQL
  - CIDOC-CRM
  - OAI-PMH
  - REST-API
update_frequency: daily
contact_information: "Technical Support <mailto:itoffice@fitzmuseum.cam.ac.uk> Collections Enquiries <mailto:documentation@fitzmuseum.cam.ac.uk>"
score: 5
link: "http://data.fitzmuseum.cam.ac.uk/"
---

The Fitzwiliam Museum in Cambridge has a collection of antiquities, decorative applied arts, coins and medals, manuscripts and rate books, paintings, drawings and prints - including Rembrandt etchings and handwritten music by Handel. 

The museum has released its collection data - object data, basic record ('tombstone') and extended record data. It **includes images** under a variety of licenses.

Basic data is an outline - enough to identify the object. See this record for a Monet Painting
<http://data.fitzmuseum.cam.ac.uk/oai/?verb=GetRecord&identifier=oai:data.fitzmuseum.cam.ac.uk:object-2811&metadataPrefix=pnds_dc>


The data set has around 170,000 records.

## Used In Anger

We haven't found any examples yet: let us know if you've made something.

## Technical Details

The collection data is available over an API returning JSON. There's [documentation available](http://data.fitzmuseum.cam.ac.uk/api/docs.php), with some simple examples.


Collection data is also available via an [OAI-PMH service](http://www.openarchives.org/pmh/) using [PNDS Dublin Core](http://www.ukoln.ac.uk/metadata/pns/pndsdcxml/). 
Everything is available at permanent identifiers:
http://data.fitzmuseum.cam.ac.uk/id/entity/identifier[.format]

Extended records are available over a SPARQL service.

The SPARQL data is referenced using the [CIDOC Conceptual Reference Model (CRM)](http://www.cidoc-crm.org/index.html) which "provides definitions and a formal structure for describing the implicit and explicit concepts and relationships used in cultural heritage documentation." So that's nice. They provide a [beta in-browser test interface](http://data.fitzmuseum.cam.ac.uk/beta/sparqlhtml/).
