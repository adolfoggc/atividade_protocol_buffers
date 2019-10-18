class CreateRoomStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :room_statuses do |t|
      t.integer :ac_temperature
      t.boolean :ac_status
      t.boolean :tv_status
      t.integer :tv_channel
      t.boolean :lamp_status

      t.timestamps
    end
  end
end
