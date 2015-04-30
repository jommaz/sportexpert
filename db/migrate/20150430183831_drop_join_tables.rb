class DropJoinTables < ActiveRecord::Migration
  def change
  	drop_table :userpost
  	drop_table :userscomments
  	drop_table :postcomment
  end
end
