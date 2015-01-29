class TopicsController < ApplicationController
	def index
		@topics = Topic.all
	end
	
	def new
		@topic = Topic.new
	end	

	def create
		@topic = Topic.create topic_params
		redirect_to topics_path
	end	

	def show
		@topic = Topic.find params[:id]
		@posts = @topic.posts
	end

	def edit
		@topic = Topic.find params[:id]
	end	

	def update
		@topic = Topic.find params[:id]
		@topic.update_attributes topic_params
		redirect_to topics_path
	end	

	def destroy
    @topic = Topic.find params[:id]
    @topic.delete
    redirect_to topics_path
  end

private
	def topic_params
		params.require(:topic).permit(
			:title,
			:initial_post
			)
	end	
end
