class Picture < ApplicationRecord
	belongs_to :user
	acts_as_votable
	has_attached_file :image, styles: { regular: "400x400!", large: "585x500!" }

	validates_attachment_content_type :image, :content_type => ['image/jpeg']
	
	validates :caption, :image_file_name, :location, presence:  :true
	validates_length_of :caption, :maximum => 140
	validates_length_of :location, :maximum => 50

end
