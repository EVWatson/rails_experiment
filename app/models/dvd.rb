class Dvd < ApplicationRecord

  validates :title, presence: true,
                    length: { minimum: 1 }
  validates :year, presence: true,
                    length: {minimum: 4}
  validates  :genre, presence: true
  validates :category, presence: true
end
