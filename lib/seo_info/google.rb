module Seo
  class Google
   def indexed_pages(site)
     page = Nokogiri::HTML(open("https://www.google.com/search?hl=en&safe=off&q=site%3A#{site}&btnG=Search").read)
     page.xpath('//div[@id="subform_ctrl"]/div/b')[2]
   end
  end
end