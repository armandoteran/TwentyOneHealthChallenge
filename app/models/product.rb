class Product < ApplicationRecord
  has_many :orders, dependent: :destroy
  belongs_to :cateogry, dependent: :destroy
end
