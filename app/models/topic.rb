class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :comments, :as => :commentable
end
