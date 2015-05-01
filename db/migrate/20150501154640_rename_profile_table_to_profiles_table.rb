class RenameProfileTableToProfilesTable < ActiveRecord::Migration
 def self.up
    rename_table :profile, :profiles
  end 
  def self.down
    rename_table :profiles, :profile
  end
end
