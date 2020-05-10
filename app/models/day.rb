class Day < ApplicationRecord
  has_many :logs, dependent: :destroy
  has_many :marinelives, dependent: :destroy
end
