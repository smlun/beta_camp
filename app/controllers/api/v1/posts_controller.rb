class Api::V1::PostsController < ApplicationController
  def index
    @posts = Post.all
    respond_to do |format|
      format.json { render :json => @posts.to_json, :status => :ok }
    end
  end

  def create
  end

  def update
  end

  def destroy
  end

  def show
  end
end
