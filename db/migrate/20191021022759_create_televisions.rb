class CreateTelevisions < ActiveRecord::Migration[5.2]
  def change
    create_table :televisions do |t|
      t.integer :chanel
      t.integer :status

      t.timestamps
    end
  end
end
