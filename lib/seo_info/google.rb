module SeoInfo
  class Google
    attr_accessor :site_url
    attr_reader :results

    def initialize(site_url)
      @site_url = site_url
      @results = {}
    end

    def indexed_pages
      results[:indexed_pages] ||= begin
        page = Nokogiri::HTML(open("https://www.google.com/search?hl=en&safe=off&q=site%3A#{site_url}&btnG=Search").read)
        page.xpath('//div[@id="subform_ctrl"]/div/b/text()')[2].text
      end
    end
  end
end