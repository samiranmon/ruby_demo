class Bool < ApplicationRecord
  belongs_to :subject
  validates :title, presence: true
  #validates_presence_of :title
   validates_numericality_of :price, :message=>"Price should be int"
end
