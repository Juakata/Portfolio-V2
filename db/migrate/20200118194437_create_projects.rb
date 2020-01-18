class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :image
      t.text :description
      t.string :github
      t.string :live
      t.integer :area_id

      t.timestamps
    end
  end
end
