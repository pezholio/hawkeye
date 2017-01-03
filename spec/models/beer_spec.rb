require "rails_helper"

RSpec.describe Beer, :type => :model do

  it 'searches for a beer' do
    beers = Beer.search('punk ipa')

    expect(beers.count).to eq(18)
    expect(beers.first.id).to eq(5702)
    expect(beers.first.name).to eq('Punk IPA')
  end

  it 'finds a beer by ID' do
    beer = Beer.find(5702)
    expect(beer.name).to eq('Punk IPA')
  end

end
