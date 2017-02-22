class Submision < ApplicationRecord
  belongs_to :user
  has_one :feedback
end
