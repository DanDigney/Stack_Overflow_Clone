class Comment < ActiveRecord::Base
  validates_presence_of :user_id, :content

  has_many :votes, as: :votable
  
  belongs_to :user
  belongs_to :commentable, polymorphic: true
end
