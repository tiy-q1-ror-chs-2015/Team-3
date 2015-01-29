class AddInitialPostColumnToTopics < ActiveRecord::Migration
  def change
  	add_column :topics, :initial_post, :text
  end
end
