class AddReferencesToSprintsAndComments < ActiveRecord::Migration[8.0]
  def change
    add_reference :sprints, :project
    add_reference :comments, :author, foreign_key: { to_table: :users }
    add_reference :comments, :task
  end
end
