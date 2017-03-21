class Feedback < ApplicationRecord
  belongs_to :submision
  has_many :comments 

end
