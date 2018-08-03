class Item < ApplicationRecord
  validates :list, presence: true
  validates :title, presence: true

  belongs_to :list
end
