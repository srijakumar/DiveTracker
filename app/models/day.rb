class Day < ApplicationRecord
  has_many :logs, dependent: :destroy
  has_many :marinelives, dependent: :destroy
  accepts_nested_attributes_for :logs
  accepts_nested_attributes_for :marinelives
end
