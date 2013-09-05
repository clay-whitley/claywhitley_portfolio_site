class Post < ActiveRecord::Base
  validates :title, :content, presence: true

  attr_accessible :title, :content

  has_many :posts_tags
  has_many :tags, through: :posts_tags

end
