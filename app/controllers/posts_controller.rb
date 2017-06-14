# frozen_string_literal: true

class PostsController < OpenReadController
  before_action :set_post, only: [:update, :destroy]

  # GET /posts
  def index
    @posts = Post.all

    render json: @posts
  end

  # GET /posts/1
  def show
    render json: Post.find(params[:id])
  end

  # POST /posts
  def create
    # @post = current_user.posts.build(post_params)
    #
    # if @post.save
    #   render json: @post, status: :created
    # else
    #   render json: @post.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /posts/1
  def update
    # if @post.update(post_params)
    #   head :no_content
    # else
    #   render json: @post.errors, status: :unprocessable_entity
    # end
  end

  # DELETE /posts/1
  def destroy
    # @post.destroy
    #
    # head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = current_user.examples.find(params[:id])
  end
  private :set_post

  # Only allow a trusted parameter "white list" through.
  def post_params
    params.require(:post).permit(:title, :body, :date_posted)
  end
  private :post_params
end
