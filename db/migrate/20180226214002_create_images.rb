class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :image_url
      t.string :date
      t.string :title
      t.string :description
      t.string :category
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
