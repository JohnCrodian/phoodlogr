class AddFavorite < ApplicationRecord

	attr_accessor :image_file_name, :image_content_type

	belongs_to :user
	belongs_to :restaurant
	has_attached_file :image

	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
