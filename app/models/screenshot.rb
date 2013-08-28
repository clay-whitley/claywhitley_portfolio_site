class Screenshot < ActiveRecord::Base
  attr_accessible :url

  belongs_to :project
end
