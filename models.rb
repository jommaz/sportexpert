class User < ActiveRecord::Base
	has_one :profile
	has_many :posts
	has_many :comments
end
class Profile < ActiveRecord::Base
	belongs_to :users
end
class Post < ActiveRecord::Base
	belongs_to :users
	has_many :comments
end
class Comment < ActiveRecord::Base
	belongs_to :users
	belongs_to :post
end