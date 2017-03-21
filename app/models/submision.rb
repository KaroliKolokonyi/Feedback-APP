class Submision < ApplicationRecord
  belongs_to :user, optional: true
  has_one :feedback

 end
