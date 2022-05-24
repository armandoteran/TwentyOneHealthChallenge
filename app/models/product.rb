class Product < ApplicationRecord
  has_many :orders, dependent: :destroy
  belongs_to :categories, dependent: :destroy, optional: true
end
