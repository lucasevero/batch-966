# CONVENTION
# file name: lower_snake_case
# class name: UpperCamelCase

class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :city
      t.timestamps
    end
  end
end
