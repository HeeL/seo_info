require "bundler/gem_tasks"
require "open-uri"

namespace :test do
  desc "Getting fresh page source data for specs"
  task :prepare do
    puts "Getting google search page..."
    page = open("https://www.google.com/search?hl=en&safe=off&q=site%3Aruby-lang.org&btnG=Search").read
    path = 'spec/data/google_search.html'
    File.open(path, 'w') {|f| f.write page}
    puts "Successfully saved google search result page into #{path}"
  end
end