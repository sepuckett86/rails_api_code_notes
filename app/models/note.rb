class Note < ApplicationRecord
  ### Relationships
  has_many :snippets

  ### Validations
  validates :title, presence: true
end
