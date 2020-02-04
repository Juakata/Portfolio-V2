class CreateNetworks < ActiveRecord::Migration[6.0]
  def change
    create_table :networks do |t|
      t.string :github
      t.string :linkedin
      t.string :gmail
      t.string :twitter
      t.string :instagram
      t.integer :user_id

      t.timestamps
    end
  end
end
