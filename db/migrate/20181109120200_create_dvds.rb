class CreateDvds < ActiveRecord::Migration[5.2]
  def change
    create_table :dvds do |t|
      t.string :title
      t.string :genre
      t.string :year
      t.string :category

      t.timestamps
    end
  end
end
