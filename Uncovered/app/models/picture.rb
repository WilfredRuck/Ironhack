class Picture < ApplicationRecord
	belongs_to :user
	has_attached_file :image, styles: { large: "500x500" }

	validates_attachment_content_type :image, :content_type => ['image/jpeg']
	
	validates :caption, :image_file_name, presence:  :true
	validates_length_of :caption, :maximum => 140

end
