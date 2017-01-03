class Beer

  attr_accessor :id, :name, :abv, :description, :ibu, :label, :slug, :style

  def self.search(q)
    beers = Untappd::Beer.search(q)
    beers.beers.items.map { |b| Beer.new(b.beer) }
  end

  def self.find(id)
    info = Untappd::Beer.info(id)
    Beer.new(info.beer)
  end

  def initialize(beer)
    @id = beer.bid
    @name = beer.beer_name
    @abv = beer.beer_abv
    @description = beer.beer_description
    @ibu = beer.beer_ibu
    @label = beer.beer_label
    @slug = beer.beer_slug
    @style = beer.beer_style
  end

end
