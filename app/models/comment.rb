class Comment < ApplicationRecord
  
belongs_to :feedback, optional: true 

end
