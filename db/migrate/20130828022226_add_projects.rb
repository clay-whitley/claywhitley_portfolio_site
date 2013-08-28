class AddProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|

      t.string :url
      t.string :github_url
      t.string :description
      t.string :name
      
      t.timestamps
    end
  end
end
