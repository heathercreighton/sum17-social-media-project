class Tag < ApplicationRecord
	has_many :tweets_tags
	has_many :tweets, through: :tweets_tags
end
