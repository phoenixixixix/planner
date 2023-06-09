class AddTaskOwnerIdToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :task_owner_id, :integer
    add_foreign_key :tasks, :users, column: :task_owner_id, on_delete: :cascade
  end
end
