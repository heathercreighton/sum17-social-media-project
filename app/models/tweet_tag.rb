class TweetTag < ApplicationRecord
	has_many :tweets
	has_many :tags

end
