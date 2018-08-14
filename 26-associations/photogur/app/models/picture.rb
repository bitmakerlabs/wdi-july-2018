class Picture < ActiveRecord::Base
  # there is a foreign key about you in the comments table
  has_many :comments

  # now we can do this
  # Picture.last.comments
end
