class Note < ActiveRecord::Base
	validates_presence_of :title, :content
	belongs_to :user # cela injecte des methodes pour manipuler les relations
end