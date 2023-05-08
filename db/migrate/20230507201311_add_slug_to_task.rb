class AddSlugToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :slug, :string
  end
end
