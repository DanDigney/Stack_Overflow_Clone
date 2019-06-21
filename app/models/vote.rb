class Vote < ActiveRecord::Base
  validates_presence_of :user_id, :value
  validates_uniqueness_of :user_id, scope: [:votable_id, :votable_type]
  
  belongs_to :user
  belongs_to :votable, polymorphic: true
end
