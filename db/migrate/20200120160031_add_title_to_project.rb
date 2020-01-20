class AddTitleToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :title, :string
  end
end
