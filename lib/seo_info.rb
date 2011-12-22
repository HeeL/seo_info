$:.push File.expand_path(File.dirname(__FILE__))

require 'nokogiri'
require 'open-uri'
require 'seo_info/version'

SeoInfo.autoload :Google, 'seo_info/google.rb'
