class LikesController < ApplicationController
  before_action :authenticate_user

  def create
    @like = Like.new（
      user_id: @current_user.id
    ）
  end

end