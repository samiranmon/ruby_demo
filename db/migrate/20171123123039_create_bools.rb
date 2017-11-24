class CreateBools < ActiveRecord::Migration[5.1]
  def change
    create_table :bools do |t|

      t.timestamps
    end
  end
end
