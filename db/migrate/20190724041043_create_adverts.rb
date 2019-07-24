class CreateAdverts < ActiveRecord::Migration[5.2]
  def change
    create_table :adverts do |t|
      t.references :book, foreign_key: true, null: false
      t.references :seller, foreign_key: {to_table: :users}
      t.decimal :price, precision: 10, scale: 2, null: false
      t.string :condition

      t.timestamps
    end
  end
end
