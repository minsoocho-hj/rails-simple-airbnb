class AddImageToFlats < ActiveRecord::Migration[6.1]
  def change
    add_column :flats, :image, :binary
  end
end
