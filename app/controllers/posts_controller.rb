class PostsController < ApplicationController

  def new
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def create
    @post = current_user.posts.create(post_params)

    if @post.persisted?
      redirect_to post_path(@post)
      flash[:success] = "New post created"
    else
      render :new
      flash[:danger] = "Error creating post"
    end
  end

private

def post_params
  params.require(:post).permit(:image, :caption)
end


end
