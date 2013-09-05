class AddDateToPost < ActiveRecord::Migration
  def change
    add_column :posts, :posted_date, :datetime
  end
end
