class Skill < ActiveRecord::Base
  attr_accessible :name

  belongs_to :project
end
