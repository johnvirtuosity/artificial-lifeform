class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.boolean :background_task
      t.datetime :start_datetime
      t.string :ip_startedfrom
      t.string :mac_startedfrom
      t.string :username_startedby
      t.datetime :completed_datetime
      t.boolean :completion_confirmation

      t.timestamps null: false
    end
  end
end
