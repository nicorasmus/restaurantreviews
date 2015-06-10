class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy

  validates :name, :category, presence: true
  validates :address, presence: true
  # validates :phone_number, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "french", "belgian", "japanese"]}
end
