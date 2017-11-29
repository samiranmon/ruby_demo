class User < ApplicationRecord
  belongs_to :bool
  
  validates_presence_of :first_name
   validates :email, presence: true, uniqueness: true
   has_secure_password
   
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
end
