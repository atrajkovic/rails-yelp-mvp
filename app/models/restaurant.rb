class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  has_many :reviews, dependent: :destroy

  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
