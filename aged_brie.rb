require './item_behavior'

class AgedBrie < ItemBehavior

  ##
  # Override update method
  # AgedBrie, Backstage and Sulfuras increase 1 instead of decreasing
  def update(item)
    update_quality(item, item.quality + 1)
  end

  def expired(item)
    increase_quality(item)
  end
end