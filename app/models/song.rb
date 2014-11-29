class Song < ActiveRecord::Base
  validates :length, numericality: { only_integer: true, greater_than: 0 }
end
