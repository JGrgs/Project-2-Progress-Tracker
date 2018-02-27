class AddDateToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :date, :date
  end
end
