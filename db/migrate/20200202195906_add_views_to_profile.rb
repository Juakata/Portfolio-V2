class AddViewsToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :views, :integer, default: 0
  end
end
