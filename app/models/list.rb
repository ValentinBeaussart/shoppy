class List < ApplicationRecord
  belongs_to :user
  has_many :product_lists, dependent: :destroy
end
