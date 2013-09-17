class Post < ActiveRecord::Base
  validates :title, :content, presence: true

  attr_accessible :title, :content, :posted_date, :rendered_content

  has_many :posts_tags
  has_many :tags, through: :posts_tags

  before_save :render_html

  private

    class HTMLwithPygments < Redcarpet::Render::HTML
      def block_code(code, language)
        Pygments.highlight(code, :lexer => language)
      end
    end

    def render_html
      require 'redcarpet'
      markdown = Redcarpet::Markdown.new(HTMLwithPygments, :autolink => true, :space_after_headers => true, :fenced_code_blocks => true, :strikethrough => true, :prettify => true)
      self.rendered_content = markdown.render self.content
    end

end
