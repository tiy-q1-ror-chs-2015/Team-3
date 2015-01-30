class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD

=======



  has_many :posts, through: :user_posts
  has_many :user_posts
  has_many :comments, through: :user_comments
  has_many :user_comments
>>>>>>> 3694e34d5051313f2f4be466d17d32bc7f6ad9a4

  NICK_OPTIONS = [
    "His winning smile",
    "His spelling and grammar",
    "His taste in cars",
    "His humble attitude",
    "His shirts",
    "Other"
  ]
end
