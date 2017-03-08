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
    @post = @section.posts.new(post_params)
    @post.save
    redirect_to sections_path
  end

  def edit
    @section = Section.find(params[:section_id])
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to sections_path
  end

  def update
    @section = Section.find(params[:section_id])
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to sections_path
    else
      render 'edit'
    end
  end

private
  def post_params
    params.require(:post).permit(:link, :description, :post_image)
  end
end
