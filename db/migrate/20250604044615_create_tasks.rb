class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :desription
      t.integer :status
      t.integer :priority
      t.integer :type

      t.timestamps
    end
  end
end
