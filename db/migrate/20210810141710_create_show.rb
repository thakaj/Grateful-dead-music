class CreateShow < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t| 
      t.string :date
      t.belongs_to :band
      t.timestamps
    
    end
  end
end
