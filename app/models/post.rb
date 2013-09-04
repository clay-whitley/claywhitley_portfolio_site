class Post < ActiveRecord::Base
  validates :title, :content, presence: true
  
  attr_accessible :title, :content

  has_and_belongs_to_many :tags

end
