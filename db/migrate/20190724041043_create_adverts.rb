class CreateAdverts < ActiveRecord::Migration[5.2]
  def change
    create_table :adverts do |t|
      t.references :book, foreign_key: true
      t.decimal :price, precision: 10, scale: 2
      t.string :condition

      t.timestamps
    end
  end
end
