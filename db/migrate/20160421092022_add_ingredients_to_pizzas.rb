class AddIngredientsToPizzas < ActiveRecord::Migration
  def change
    add_column :pizzas, :ingredients, :string
  end
end
