class CreateThermos < ActiveRecord::Migration[5.2]
  def change
    create_table :thermos do |t|
      t.integer :temperature

      t.timestamps
    end
  end
end
