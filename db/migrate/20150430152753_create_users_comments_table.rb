class CreateUsersCommentsTable < ActiveRecord::Migration
  def change
  	create_table :userscomments, id: false do |t|
  		t.integer :users_id
  		t.integer :comments_id
  	end
  	add_index :userscomments, :users_id
  	add_index :userscomments, :comments_id
  end
end
