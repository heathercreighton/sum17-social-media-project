module ApplicationHelper

	def total_followers(user_id)
		total = 0
		# followers = []

		User.all.each do |follower|
	  	if follower.following.include? user_id
	     total += 1
	    end
   	end
		return total
	end			


	def total_tweets(user_id)
		
		tweets =[]
		tweets = Tweet.where(user_id: user_id)
		return tweets.length

	end	
end
