$:.push File.expand_path(File.dirname(__FILE__))

require 'nokogiri'
require 'open-uri'
require 'seo_info/version'
#require 'seo_info/google'

SeoInfo.autoload :Google, 'seo_info/google.rb'


x = SeoInfo::Google.new('belok.org.ua')
x.indexed_pages
puts x.results
