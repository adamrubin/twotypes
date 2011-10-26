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

  def index
    @post = Post.recent.page(params[:page]).per(1).first
    @page = params[:page].present? ? params[:page] : "1"
    @count = Post.count
    
    respond_to do |format|
      format.html
      format.js
    end    
  end

  def show
    @post = Post.find(params[:id])
    @page = params[:page].present? ? params[:page] : "1"
    @count = Post.count
  end

end