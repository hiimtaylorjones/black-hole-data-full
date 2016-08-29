# API Controller for posts.
class Api::V1::PostsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :destroy]

  def index
    if params[:limit]
      max = params[:limit]
    else
      max = 10
    end

    @posts = Post.all.limit(max)

    render json: @posts
  end

  def new
    @post = Post.new
    render json: @post
  end

  def create
  end

  def show
    render json: @post
  end

  def edit
    render json: @post
  end

  def destroy
    if @post.destroy
      render json: {
        status: :success,
        message: "Post Destroyed"
      }
    else
      render json: {
        status: :failure,
        message: "Could not destroy post"
      }
    end
  end

  private

    def find_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body, :published)
    end
end
