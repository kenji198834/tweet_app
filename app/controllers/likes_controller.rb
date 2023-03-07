class LikesController < ApplicationController
  before_action :authenticate_user

  def create
    @like = Like.new
  end

end