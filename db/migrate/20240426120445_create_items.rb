class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name
      t.references :category, null: false, foreign_key: true
      t.decimal :price, precision: 10, scale: 2
      t.string :type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
