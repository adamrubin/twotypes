class PostsController < ApplicationController
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save!
        format.js
      end
    end
  end
end