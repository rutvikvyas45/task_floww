class AddReferencesToTasks < ActiveRecord::Migration[8.0]
  def change
    change_table :tasks do |t|
      t.references :reporter, foreign_key: { to_table: :users }
      t.references :assignee, foreign_key: { to_table: :users }
      t.references :sprint, foreign_key: true
      t.references :project, foreign_key: true
      t.references :parent_ticket, foreign_key: { to_table: :tasks }
    end
  end
end
