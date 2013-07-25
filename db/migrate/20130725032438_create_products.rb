class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price, precision: 8, scale: 2
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
