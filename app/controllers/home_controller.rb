class HomeController < ApplicationController
  def index
    @post = Post.recent.page(params[:page]).per(1).first
    @page = params[:page].present? ? params[:page] : "1"
    @count = Post.count
    
    # @post = Post.random
    # @post = Post.new if @post.blank?
    
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
