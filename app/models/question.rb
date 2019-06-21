class Question < ActiveRecord::Base
  validates_presence_of :user_id, :title, :content

  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :votable
  
  belongs_to :user
end
