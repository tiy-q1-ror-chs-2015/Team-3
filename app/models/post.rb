class Post < ActiveRecord::Base
  belongs_to :topic
  has_many :comments, :as => :commentable
  has_many :users, through: :user_posts
  has_many :user_posts
end
