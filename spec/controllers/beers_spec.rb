require "rails_helper"

RSpec.describe BeersController do

  it 'searches for some beers' do
    post 'search', params: { search: 'punk ipa' }

    json = JSON.parse(response.body)

    expect(json.count).to eq(18)
    expect(json.first).to eq({
      "id"=>5702,
      "name"=>"Punk IPA",
      "abv"=>5.6,
      "description"=>"Welcome to a post Punk apocalyptic mother fucker of a pale ale.\n\nA beer that spent its formative years Blitzkrieg bopping around India and the sub continent. Quintessential Empire with an anarchic twist.\n\nGod save the Queen and all who sail in her. Raising a Stiff Little Finger to IPAs that have come before and those it is yet to meet.\n\nTurn up the volume Pay the man. Embrace the punked up, fucked up outlaw elite.\n\nNever Mind the Bollocks this is the real shit.\n\nMalts:\nMarris Otter Extra Pale.\n\nHops:\nChinook, Simcoe, Ahtanum, Nelson Sauvin.",
      "ibu" => 45,
      "id" => 5702,
      "label" => "https://untappd.akamaized.net/site/beer_logos/beer-5702_7d1d7_sm.jpeg",
      "name" => "Punk IPA",
      "slug" => "brewdog-punk-ipa",
      "style" => "IPA - American"
    })
  end

end
