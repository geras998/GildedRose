require './lib/item_behavior'
require './lib/aged_brie'
require './lib/backstage'
require './lib/sulfuras'

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