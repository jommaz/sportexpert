class RemoveJoinTables < ActiveRecord::Migration
  def change
  	drop_table :userscomments
  	drop_table :postcomment
  	drop_table :userpost
  end
end
