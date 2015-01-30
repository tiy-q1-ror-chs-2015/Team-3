class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true

  has_many :users, through: :user_comments
  has_many :user_comments
end
