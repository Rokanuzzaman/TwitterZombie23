class UserInfo < ActiveRecord::Base
validates :email, :full_name, :date_of_birth, :password, :presence => true
validates :email, :uniqueness => true
end
