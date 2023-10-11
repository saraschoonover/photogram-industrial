class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :image
      t.integer :comments_count
      t.integer :likes_count, default: 0
      t.text :caption
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end