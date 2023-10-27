class CreateOperationTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :operation_types do |t|

      t.timestamps
    end
  end
end
