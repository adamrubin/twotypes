class PostsController < ApplicationController
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save!
        format.html { redirect_to root_path, notice: "Oh, that's a good one!" }
        format.js
      end
    end
  end
end