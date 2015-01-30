class AddCommentDataToComments < ActiveRecord::Migration
  def change
    add_column :comments, :title, :string
    add_column :comments, :content, :text
    add_column :comments, :commentable_id, :integer
    add_column :comments, :commentable_type, :string
  end
end
