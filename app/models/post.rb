class Post < ActiveRecord::Base
  has_many :comments  ### This was not automatic - before we did this, the post class didn't have a method called comments
end
