class Snippet < ApplicationRecord
  ### Relationships
  belongs_to :note

  ### Validations
  validates :content, presence: true
  validates :position
end
