class AddStatusToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :status, :string, default: "unstarred", null: false
  end
end
