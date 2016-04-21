class CartController < ApplicationController
  before_action :authenticate_user!

  def add
    CartItem.create pizza_id: params[:id], user_id: current_user.id
    redirect_to({controller: :welcome, action: :index}, {flash: {
        notice: "Successfully added <b>#{Pizza.find_by(id: params[:id]).name}</b> to cart. <a href='cart'>Your cart</a> has <b>#{Cart.find_by(user_id: current_user.id).cart_items.count}</b> pizzas!"
    }})
  end

  def index
    @cart_items = Cart.find_by(user_id: current_user.id)&.cart_items || []
  end

  def checkout
    Cart.empty(current_user.id)
    redirect_to({controller: :welcome, action: :index}, {flash: {
        notice: "Pizza on your way!"
    }})
  end

end
