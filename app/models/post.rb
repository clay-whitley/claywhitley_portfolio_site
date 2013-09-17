class Post < ActiveRecord::Base
  validates :title, :content, presence: true

  attr_accessible :title, :content, :posted_date

  has_many :posts_tags
  has_many :tags, through: :posts_tags

  def as_markdown
    require 'redcarpet'
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true, :fenced_code_blocks => true)
    markdown.render self.content
  end

end
