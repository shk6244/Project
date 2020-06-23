class LikesController < ApplicationController
	before_action :authenticate_user!
	
	def like_toggle like = Like.find_by(user_id: current_user.id, post_id: params[:post_id]) 
		
		if like.nil? 
			Like.create(user_id: current_user.id, post_id: params[:post_id]) 
		
		else 
			like.destroy 
		end	
		
		redirect_to root_path
	end
end
