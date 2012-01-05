Description
===========

seo_info gem gets different seo information for web-sites.

Usage
=====

Things that you are able to do right now with this gem:

* Google Page Rank for pages and web-sites:

        google = SeoInfo::Google.new('example.com')
        google.page_rank

* Number of pages indexed by Google

        google = SeoInfo::Google.new('example.com')
        google.indexed_pages

Install
=======

`gem install seo_info`

OR

Put this line in your Gemfile:
`gem 'seo_info'`

Then bundle:
`$ bundle`

Contributing
============

If you consider to contribute to seo_info gem, please try to cover your code with tests