class Comment < ApplicationRecord
  # you have a foreign key about picture in your table
  # you're in a 1-M with picture, and you're the M
  belongs_to :picture
  belongs_to :user

  # now we can do this
  # Comment.last.picture

end
