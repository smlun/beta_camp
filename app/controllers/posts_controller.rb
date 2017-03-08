class PostsController < ApplicationController
  def index
    @section = Section.find(params[:section_id])
    @post = @section.posts.all
  end

  def new
    @section = Section.find(params[:section_id])
    @post = @section.posts.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @section = Section.find(params[:section_id])
    @post = @section.posts.build(post_params)
    @post.save
    redirect_to sections_path
  end

  def edit
    @post = Post.find(params[:id])
    @post.save
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to sections_path
  end

  def update
  end
private
  def post_params
    params.require(:post).permit(:link, :description, :post_image)
  end
end
