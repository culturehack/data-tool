[![Build Status](https://travis-ci.org/culturehack/data-tool.png?branch=master)](https://travis-ci.org/culturehack/data-tool)

data-tool
=========

A collection of cultural data sets and sources &amp; a website to browse them.


## Adding data

To add a page about a data set, you just need to create a text file in the /sources folder.

Please look through the site to make sure your data set is not already included. If you'd like to add more information to an existing page, there is a link to each page's source file on GitHub at the bottom.

To create a new entry on GitHub:

1. Create an Artisanal Integer* (eg from [London Integers](http://www.londonintegers.com)) to act as the unique identifier for your entry.

2. Create a file in the [sources](https://github.com/culturehack/data-tool/tree/master/sources) folder, using the 'page plus' icon next to the path to the folder
> Github might 'fork' your file at this point: don't panic, that's fine: it's like a 'Save As' so we don't overwrite each other's changes.
 
3. Name your new file, using the format `integer-Name-of-Source.md` for the file name.

4. Fill out the information in your newly-minted text file. 
> You can use one the existing sources as a guide, or have a look at the blank and template examples in  [documentation](https://github.com/culturehack/data-tool/tree/master/documentation)  
> 
> You can add metadata using the YAML 'frontmatter' format – but don’t worry about this if you don’t know what that means - just follow the structure in the example file!
> 
> If you can, describe your source in detail, in a way that would be useful for anyone thinking about building something using that dataset.
> 
> If you know of any examples of things made using your data set, add a link in your description.
> 
> The description uses the [Markdown syntax](http://daringfireball.net/projects/markdown/syntax) for text formatting.
>
> The Dataset Size, Licensing and Contact information sections at the bottom of each page are actually pulled in from the YAML frontmatter at the top of the file - you don't need to add them again.

5. 'Commit' your new file when you're done (it's like saving), using the green button at the foot of the page below the editing area. 
> Add a bit of description about the changes you're making. 
> Keep the commit summary short and to the point!

6. If you've 'forked' the repository, saving will issue a Pull Request for someone at Culture Hack to accept your change.


Artisanal Integers are a collection of web services which generate numbers (integers) that are guaranteed to be unique. We use them to make sure that there are no conflicts when merging together forked versions of this codebase.
