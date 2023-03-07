class LikesController < ApplicationController
  before_action :authenticate_user

  def create
    @like = Like.new(user_id: @current_user.id, post_id: params[:post_id])
    @like.save
    redirect_to("/posts/#{params[:post_id]}")
  end

  def destroy
    @link = Link.find_by(user_id: @current_user.id, post_id: params[:post_id])
    @link.destroy
    redirect_to("/posts/#{params[:post_id]}")
  end

end