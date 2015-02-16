class User < ActiveRecord::Base
  #this give us additional methods such as
    #':authentication(password)', which compares to ...
  has_secure_password
  #make sure that each user has a non-blank and unique email
  validates :email, presence: true, uniqueness: true
end
