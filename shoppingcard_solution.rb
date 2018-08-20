# Feature Envy Example

# Here is a shopping cart class
class ShoppingCart < ActiveRecord::Base
  has_many :items

  def gross_price
    items.sum { |item| item.gross_price }
  end
end

# Here is an item class
class Item < ActiveRecord::Base
  belongs_to :shopping_cart

  def gross_price
    net + tax
  end
end