class Tag < ApplicationRecord
  # there is a pictures_tags join table
  # you're in a M-M with pictures
  has_and_belongs_to_many :pictures

  # we can now do this:
  # Tag.last.pictures
end
