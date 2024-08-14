class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
      if params[:post][:images].present?
        params[:post][:images].each do |image|
        @post.images.attach(image)
       end
      end
      if @post.save
        redirect_to posts_path
      else
        render :new
      end
  end

  def index
    @posts = Post.all
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(images: [])
  end


end
