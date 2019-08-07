class AddFieldToGalleries < ActiveRecord::Migration[5.2]
  def change
    add_column :galleries, :image_content_type, :string
    add_column :galleries, :image_file_size, :string
  end
end
