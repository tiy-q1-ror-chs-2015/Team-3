class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
    @topic = Topic.find params[:topic_id]
    @post = Post.new
  end

  def show
    @topic = Topic.find params[:topic_id]
    @post = Post.find params[:id]
    @comment = Comment.new
    @comments = @post.comments
  end

  def create
    @topic = Topic.find params[:topic_id]
    @post = @topic.posts.create post_params
    redirect_to topic_path(@topic)
  end

  def edit
    @topic = Topic.find params[:topic_id]
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find params[:id]
    @topic = Topic.find params[:topic_id]
    @post.update_attributes post_params
    redirect_to topic_path(@topic)
  end

  def destroy
    @topic = Topic.find params[:topic_id]
    @post = Post.find params[:id]
    @post.destroy
    redirect_to @topic
  end

  def create_comment
    @topic = Topic.find params[:topic_id]
    @post = Post.find params[:id]
    @comment = @post.comments.create comment_params
    redirect_to topic_post_path(@topic, @post)
  end

  def destroy_comment
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to topic_post_path(@comment.commentable.topic, @comment.commentable)
  end

  def comment_params
    params.require(:comment).permit(
        :title,
        :content,
    )
  end

  def post_params
    params.require(:post).permit(
        :title,
        :content,
    )
  end
end
