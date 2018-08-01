class List < ApplicationRecord
  validates :user, presence: true
  validates :title, presence: true
end
