class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  NICK_OPTIONS = [
    "His winning smile",
    "His spelling and grammar",
    "His taste in cars",
    "His humble attitude",
    "His shirts",
    "Other"
  ]
end
