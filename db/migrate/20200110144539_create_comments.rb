class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.text :body

      t.timestamps
    end
  end
end
