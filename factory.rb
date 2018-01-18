require './item_behavior'
require './aged_brie'
require './backstage'
require './sulfuras'

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