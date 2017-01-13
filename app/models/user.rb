class User < ApplicationRecord
	has_many :restaurants, through: :addFavorite
	has_many :posts
end
