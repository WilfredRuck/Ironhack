class Picture < ApplicationRecord
  belongs_to :user
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "300x300" }

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :caption, :location, :image_file_name, presence:  :true
  validates_length_of :caption, :maximum => 140
  validates_length_of :location, :maximum => 20
end
