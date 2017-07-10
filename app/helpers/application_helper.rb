module ApplicationHelper

	def total_followers(user)
		total = 0
		# followers = []

		User.all.each do |follower|
	  	if follower.following.include? user.id
	     total += 1
	    end
   	end
		return total
	end			
	
end
