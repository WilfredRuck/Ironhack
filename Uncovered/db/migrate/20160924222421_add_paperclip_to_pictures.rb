class AddPaperclipToPictures < ActiveRecord::Migration[5.0]
  add_attachment :pictures, :image
  def change
  end
end
