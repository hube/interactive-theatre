class Song < ActiveRecord::Base
  belongs_to :musical

  validates :title, presence: true
  validates :length,
            numericality: { allow_blank: true, only_integer: true, greater_than: 0 }
end
