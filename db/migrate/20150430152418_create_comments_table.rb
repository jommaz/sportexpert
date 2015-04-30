class CreateCommentsTable < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
  		t.string :comment
  		t.integer :credible
  		t.datetime :timestamp
  	end
  end
end
