require './item_behavior'

class Backstage < ItemBehavior
  def update(item)
    increase = 1 # AgedBrie, Backstage and Sulfuras increase 1 by default
    case item.sell_in
    when 0...6
      increase = 3
    when 6...11
      increase = 2
    end
    update_quality(item, item.quality + increase)
  end

  def expired(item)
    item.quality = 0 if item.sell_in < 0
  end
end