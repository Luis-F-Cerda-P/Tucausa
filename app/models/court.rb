class Court < ApplicationRecord
  has_many :rooms, dependent: :destroy
end
