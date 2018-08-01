class Item < ApplicationRecord
  validates :list, presence: true
  validates :title, presence: true
end
