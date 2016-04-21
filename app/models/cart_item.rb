class CartItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :pizza
  attr_accessor :user_id
  after_initialize :create_cart

  def create_cart
    self.cart_id = (Cart.find_by(user_id: user_id) || Cart.create(user_id: user_id)).id
  end

end
