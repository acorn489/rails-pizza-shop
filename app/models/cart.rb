class Cart < ActiveRecord::Base
  has_many :cart_items
  belongs_to :user

  def self.item_count(user_id)
    Cart.find_by(user_id: user_id)&.cart_items&.count || 0
  end

  def self.empty(user_id)
    Cart.find_by(user_id: user_id)&.cart_items&.destroy_all
  end
end
