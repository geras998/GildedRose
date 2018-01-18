##
# Class to extend Item functionality
class ItemBehavior
  MAX_QUALITY = 50
  def update(item)
    update_quality(item, item.quality - 1)
  end

  def update_quality(item, quality)
    if quality <= MAX_QUALITY
      item.quality = quality
    else
      item.quality = 50
    end
  end

  def decrease_quality(item)
    item.quality -= 1 if item.quality > 0
  end

  def increase_quality(item)
    item.quality += 1 if item.quality <= MAX_QUALITY
  end

  def expired(item)
    decrease_quality(item) if item.sell_in < 0
  end

  def decrease_sell_in(item)
    item.sell_in -= 1
  end
end