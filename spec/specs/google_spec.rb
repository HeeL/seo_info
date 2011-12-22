require 'spec_helper.rb'

describe SeoInfo::Google do
  let(:google) do
    path = 'spec/data/google_search.html'
    google = SeoInfo::Google.new('example.com')
    google.stub(:get_page).and_return(File.read(path))
    google
  end

  it "returns number greater than zero" do
    google.indexed_pages.should > 0
  end

end