class Flat < ApplicationRecord
  validates :name, presence: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
  validates :price_per_night, presence: true, numericality: { greater_than: 0.0 }
  validates :number_of_guests, presence: true, numericality: { greater_than: 0.0 }

end
