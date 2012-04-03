class Post < ActiveRecord::Base
  validates_presence_of :name, :title, :content
  
  has_many :comments
  has_attached_file :photo,
                :styles => { :medium => "250x250>",
                             :thumb => "100x100>" },
:url => "/posts/:attachment/:id/:style/:basename.:extension",  
:path => ":rails_root/public/posts/:attachment/:id/:style/:basename.:extension"                             

validates_attachment_presence :photo  
validates_attachment_size :photo, :less_than => 1.megabytes  
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']  

                           
end
