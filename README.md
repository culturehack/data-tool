[![Build Status](https://travis-ci.org/culturehack/data-tool.png?branch=master)](https://travis-ci.org/culturehack/data-tool)

data-tool
=========

A collection of cultural data sets and sources &amp; a website to browse them.


## Adding data

To add a data set, first look through the site to make sure it's not already included.

Then create an Artisanal Integer* (eg from [London Integers](http://www.londonintegers.com)), and create a file with the format `&lt;integer&gt;-name-of-source.md` in the (sources)[https://github.com/culturehack/data-tool/tree/master/sources] folder.

Use one the existing sources as a guide. You can add metadata using the YAML 'frontmatter' format – but don’t worry about this if you don’t know what that means.

Please describe each source in as much detail as you can, in a way that would be useful for anyone thinking about building something using that dataset. The description uses the Markdown syntax for text formatting.

* Artisanal Integers are a collection of web services which generate numbers (integers) that are guaranteed to be unique. We use them to make sure that there are no conflicts when merging together forked versions of this codebase.
