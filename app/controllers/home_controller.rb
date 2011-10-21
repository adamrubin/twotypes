class HomeController < ApplicationController
  def index    
    # rand_id = rand(1+Post.count) 
    # @post = Post.where("id = ?", rand_id).first
    # logger.debug "POST IS: #{@post.inspect}"
    @post = Post.random
    @post = Post.new if @post.blank?
    
    respond_to do |format|
      format.html
      format.js
    end    
  end

end
