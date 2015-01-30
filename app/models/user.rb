class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD
 
=======

  has_many :posts, through: :user_posts
  has_many :user_posts

<<<<<<< HEAD
=======
>>>>>>> ef2343707ebb3e7b9f08d3b2e7e214bc9c708094
>>>>>>> 42ee94b964016040ee525c3927940c9ea4fa475e
  NICK_OPTIONS = [
    "His winning smile",
    "His spelling and grammar",
    "His taste in cars",
    "His humble attitude",
    "His shirts",
    "Other"
  ]
end
