class RelationshipsController < ApplicationController
  def create
   current_user.relationships.find_or_create_by(followed_id: params[:user_id])
    redirect_to request.referer
  end

  def destroy
    follow = current_user.relationships.find_by(followed_id: params[:user_id])
    follow.destroy if follow
    redirect_to request.referer
  end
  def followed
		user = User.find(params[:user_id])
		@users = user.followings
  end
  def followers
		user = User.find(params[:user_id])
		@users = user.followers
  end

end