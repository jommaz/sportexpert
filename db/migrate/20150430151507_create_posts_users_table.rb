class CreatePostsUsersTable < ActiveRecord::Migration
  def change
  	create_table :userpost, id: false do |t|
  		t.integer :users_id
  		t.integer :posts_id
  	end
  	add_index :userpost, :users_id 
  	add_index :userpost, :posts_id
  end
end
