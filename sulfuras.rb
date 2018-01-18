require './item_behavior'

# Sulfuras is a legendary item,
# never has to be sold or decreases in Quality
class Sulfuras < ItemBehavior
  def update(item)
  end

  def expired(item)
  end

  def decrease_sell_in(item)
  end
end