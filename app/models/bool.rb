class Bool < ApplicationRecord
  belongs_to :subject
  validates :title, presence: true
end
