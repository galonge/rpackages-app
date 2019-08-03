require 'spec_helper'

feature 'External request stubbed' do
  it 'queries the CRAN R Packages repo' do
    uri = URI('http://cran.r-project.org/src/contrib/PACKAGES')
    response = Net::HTTP.get(uri)
    expect(response).to be_an_instance_of(String)
  end
end
