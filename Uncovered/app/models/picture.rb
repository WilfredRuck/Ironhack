class Picture < ApplicationRecord
  belongs_to :user
  has_attached_file :image, styles: { large: "300x300" }

  validates_attachment_content_type :image, :content_type => ['image/jpeg']

  validates :caption, :location, :image_file_name, presence:  :true
  validates_length_of :caption, :maximum => 140
  validates_length_of :location, :maximum => 20
end
