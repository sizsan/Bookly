class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :isbn, null: false
      t.string :title, null: false

      t.timestamps
    end
  end
end
