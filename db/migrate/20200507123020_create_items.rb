class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.decimal :price
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
