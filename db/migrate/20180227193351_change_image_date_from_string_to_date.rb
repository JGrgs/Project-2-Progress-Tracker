class ChangeImageDateFromStringToDate < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :date
  end
end