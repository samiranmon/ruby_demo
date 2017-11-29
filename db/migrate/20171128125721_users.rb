class Users < ActiveRecord::Migration[5.1]
  def self.up
     drop_table :users
     
      create_table :users do |t|
         t.column :first_name, :string, :limit => 32, :null => false
         t.column :last_name, :string, :limit => 32, :null => false
         t.column :email, :string, :limit => 32, :null => false
         t.column :gender, :boolean
         t.column :user_type, :integer
         t.column :password, :string
         t.column :phone, :string
         t.column :password_digest, :string
         t.column :status, :boolean
         t.column :created_at, :timestamp
         t.column :updated_at, :datetime
      end
      
    #Users.create :first_name => "Samiran"
    
    
   end

   def self.down
      drop_table :users
   end
end
