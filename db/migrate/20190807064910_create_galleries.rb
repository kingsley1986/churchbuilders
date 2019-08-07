class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
