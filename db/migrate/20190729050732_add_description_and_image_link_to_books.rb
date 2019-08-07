class AddDescriptionAndImageLinkToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :description, :string
    add_column :books, :image_link, :string
  end
end
