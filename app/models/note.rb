class Note < ApplicationRecord
  ### Validations
  validates :title, presence: true

  ### Relationships
  has_many :snippets
end
