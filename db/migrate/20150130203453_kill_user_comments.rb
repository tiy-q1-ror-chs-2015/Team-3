class KillUserComments < ActiveRecord::Migration
  def change
    drop_table :user_topics
    drop_table :user_comments
  end
end
