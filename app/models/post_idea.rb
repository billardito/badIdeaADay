class PostIdea < ActiveRecord::Base
  attr_accessible :content, :date, :idea

  validates :idea, :presence => true
  validates :content, :presence => true
end
