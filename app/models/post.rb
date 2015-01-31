class Post < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :comments, :as => :commentable
end
