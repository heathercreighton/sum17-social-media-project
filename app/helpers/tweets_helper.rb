module TweetsHelper

	def get_tagged(tweet)

	message_arr= []	
	message_arr = tweet.message.split

	

	    message_arr.each_with_index do |word, index|


	      if word[0] == '#'
	      	
	        if Tag.pluck(:phrase).include?(word.downcase)
	          tag = Tag.find_by(phrase: word.downcase)
	        else 
	        	
	          tag = Tag.create(phrase: word.downcase)
	        end
	         tweet_tag = TweetTag.create(tweet_id: tweet.id, tag_id: tag.id)
	         message_arr[index] = "<a href= '/tag_tweets?id=#{tag.id}'>#{word}</a>"
	      
	    			tweet.message =  message_arr.join(" ")
	      end    
			end

	    return tweet
	 		
	end 		


	# def total_followers(user)
	# 	total = 0
	# 	# followers = []

	# 	User.all.each do |follower|
	#   	if follower.following.include? user.id
	#      total += 1
	#     end
 #   	end
	# 	return total
	# end			

end
