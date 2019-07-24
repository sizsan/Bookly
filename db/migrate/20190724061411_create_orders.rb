class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :advert, foreign_key: true
      t.references :buyer, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
