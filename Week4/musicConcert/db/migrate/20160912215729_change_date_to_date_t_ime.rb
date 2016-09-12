class ChangeDateToDateTIme < ActiveRecord::Migration[5.0]
  def change
  	change_column :concerts, :date, :datetime
  end
end
