class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: {only_integer: true}
  validates :rating, inclusion: { in: (0..5)}
  validates :restaurant_id, presence: true
end
