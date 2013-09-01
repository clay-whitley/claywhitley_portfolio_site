class Project < ActiveRecord::Base
  attr_accessible :name, :url, :github_url, :description

  has_many :screenshots
  has_many :skills

end