class Project < ActiveRecord::Base
  attr_accessible :name, :url, :github_url, :description

end