class Snippet < ApplicationRecord
  ### Validations
  validates :content, presence: true
  validates :position

  ### Relationships
  belongs_to :note

end
