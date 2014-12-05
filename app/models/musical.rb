class Musical < ActiveRecord::Base
  has_many :songs

  validates :title, presence: true
  validates :length, :year,
            numericality: { only_integer: true, greater_than: 0 }
end
