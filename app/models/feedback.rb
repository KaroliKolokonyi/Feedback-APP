class Feedback < ApplicationRecord
  belongs_to :submission
  has_many :comments
end
