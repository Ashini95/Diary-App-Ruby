class Entry < ApplicationRecord
  validates :description, presence: true
  validates :date,presence: true
end
