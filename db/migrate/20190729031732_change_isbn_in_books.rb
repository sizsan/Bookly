class ChangeIsbnInBooks < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :isbn, :string
  end
end
