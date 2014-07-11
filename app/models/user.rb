class User < ActiveRecord::Base
	has_many :notes # cela injecte des methodes pour manipuler les relations
end
