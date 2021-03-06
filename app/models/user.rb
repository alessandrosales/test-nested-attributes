class User < ApplicationRecord
  has_many :phones, inverse_of: :user

  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true
end
