class Picture < ActiveRecord::Base
  # there is a foreign key about you in the comments table
  has_many :comments

  # now we can do this
  # Picture.last.comments

  # you're in a M-M with tags
  # AKA there is a pictures_tags join table
  #has_and_belongs_to_many :tags

  # we can now do this:
  # Picture.last.tags

  # you're in a M-M with users and comments is the join table
  has_many :users, through: :comments

  # now we can do this
  # Picture.last.users
end
