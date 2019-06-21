class User < ActiveRecord::Base
  validates_presence_of :user_name
end
