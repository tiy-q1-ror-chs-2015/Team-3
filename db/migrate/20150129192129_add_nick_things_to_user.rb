class AddNickThingsToUser < ActiveRecord::Migration
  def change
    add_column :users, :nick_thing, :string
  end
end
