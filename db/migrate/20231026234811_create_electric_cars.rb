class CreateElectricCars < ActiveRecord::Migration[7.0]
  def change
    create_table :electric_cars do |t|
      t.string :model :unique
      t.string :brand
      t.text :features
      t.integer :manufacture_year
      t.integer :driving_range
      t.string :rental_price
      t.string :image

      t.timestamps
    end
  end
end
