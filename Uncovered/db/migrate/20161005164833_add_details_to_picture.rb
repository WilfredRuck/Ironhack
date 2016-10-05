class AddDetailsToPicture < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :camera_model, :string
    add_column :pictures, :latitude, :string
    add_column :pictures, :longitude, :string
    add_column :pictures, :date, :string
  end
end
