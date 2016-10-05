class AddGeoToPicture < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :has_geo, :boolean
  end
end
