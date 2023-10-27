class CreateElectricCarsFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :electric_cars_features do |t|
      t.references :electric_cars, null: false, foreign_key: true
      t.references :feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
