class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :direction
      t.text :message
      t.string :source_ip
      t.string :destination_ip
      t.string :source_mac
      t.string :destination_mac
      t.text :remarks

      t.timestamps null: false
    end
  end
end
