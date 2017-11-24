class Bools < ActiveRecord::Migration[5.1]
  def self.up
     drop_table :bools
     
      create_table :bools do |t|
         t.column :title, :string, :limit => 32, :null => false
         t.column :price, :float
         t.column :subject_id, :integer
         t.column :description, :text
         t.column :created_at, :timestamp
      end
   end

   def self.down
      drop_table :bools
   end
end
