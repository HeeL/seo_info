# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "seo_info/version"

Gem::Specification.new do |s|
  s.name        = "seo_info"
  s.version     = Seo::Info::VERSION
  s.authors     = ["Sergey Parizhskiy"]
  s.email       = ["parizhskiy@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{SEO information for web-sites}
  s.description = %q{Gets different seo information such as Page Rank, Alexa Rank, number of indexed pages in different search engines and so on.}

  s.rubyforge_project = "seo_info"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_development_dependency "nokogiri"
end
