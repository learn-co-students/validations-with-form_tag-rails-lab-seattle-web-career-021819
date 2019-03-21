class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
      if @post.update(post_params)
        redirect_to post_path(@post)
      else
        render :edit
      end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end



# def update
#     @cheese = Cheese.find(params[:id])
#     byebug
#     if @cheese.update(cheese_params)
#       redirect_to @cheese
#     else
#       render :edit
#     end
#   end
