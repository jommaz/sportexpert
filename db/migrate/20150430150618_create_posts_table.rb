class CreatePostsTable < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.string :post
  		t.datetime :timestamp
  		t.string :comments
  		t.integer :credible
  	end
  end
end
