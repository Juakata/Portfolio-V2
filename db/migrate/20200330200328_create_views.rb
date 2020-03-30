class CreateViews < ActiveRecord::Migration[6.0]
  def change
    create_table :views do |t|
      t.integer :count
      t.string :city
      t.integer :user_id

      t.timestamps
    end
  end
end
