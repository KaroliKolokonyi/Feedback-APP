class Comment < ApplicationRecord
  
belongs_to :feedback, optional: true 
belongs_to :user

end
