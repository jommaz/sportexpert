class CreateProfileTable < ActiveRecord::Migration
  def change
  	create_table :profile do |t|
  		t.string :bio
  		t.string :favorite
  		t.boolean :expert
  		t.integer :numpost
  		t.integer :followers
  		t.integer :followed
  		t.string :location
    end
  end
end
