class Schedule < ApplicationRecord
  belongs_to :chart
  belongs_to :room
  belongs_to :case
end
