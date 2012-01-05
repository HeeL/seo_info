require 'spec_helper.rb'

describe SeoInfo::Google do

  describe 'indexed_pages' do
    let(:google) do
      path = 'spec/data/google_search.html'
      google = SeoInfo::Google.new('example.com')
      google.stub(:indexed_pages_page).and_return(File.read(path))
      google
    end

    it "returns number greater than zero" do
      google.indexed_pages.should > 0
    end
  end

  describe 'page rank' do
    let(:google) do
      google = SeoInfo::Google.new('example.com')
      google.stub(:page_rank_page).and_return('Rank_1:1:3')
      google
    end

    it "splits the result correctly" do
      google.page_rank.should == 3
    end
  end

end