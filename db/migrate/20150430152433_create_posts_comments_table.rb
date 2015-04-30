class CreatePostsCommentsTable < ActiveRecord::Migration
  def change
  	create_table :postcomment, id: false do |t|
  		t.integer :posts_id
  		t.integer :comments_id
  	end
  	add_index :postcomment, :posts_id
  	add_index :postcomment, :comments_id
  end
end
