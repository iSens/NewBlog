class Post < ActiveRecord::Base
  validates_presence_of :name, :title, :content
  
  has_many :comments
end
