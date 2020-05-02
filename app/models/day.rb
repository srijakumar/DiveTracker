class Day < ApplicationRecord
  has_many :logs
  has_many :marinelives
end
