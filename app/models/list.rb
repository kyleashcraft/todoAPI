class List < ApplicationRecord
  validates :user, presence: true
  validates :title, presence: true

  belongs_to :user
  has_many :items, dependent: :destroy
end
