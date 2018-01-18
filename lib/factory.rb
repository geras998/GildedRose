require_relative './item_behavior'
require_relative './aged_brie'
require_relative './backstage'
require_relative './sulfuras'

class Factory
  def self.getProduct(item)
    case item.name
    when "Aged Brie"
      AgedBrie.new
    when "Backstage passes to a TAFKAL80ETC concert"
      Backstage.new
    when "Sulfuras, Hand of Ragnaros"
      Sulfuras.new
    else
      ItemBehavior.new
    end
  end
end