class CreateDrafts < ActiveRecord::Migration
  def change
  	create_table :tieups do |t|
  		t.text :sequence
  		t.timestamps
  	end 
    
    create_table :threadings do |t|
    	t.text :sequence
    	t.timestamps
    end

    create_table :treadlings do |t|
    	t.text :sequence
    	t.timestamps
    end



    create_table :drafts do |t|
    	t.string :draft_name
      t.integer :shafts

    	t.integer :threading_id
    	t.integer :treadling_id
    	t.integer :tieup_id
    	t.foreign_key :threadings
    	t.foreign_key :treadlings
    	t.foreign_key :tieups

    	t.timestamps
    end
  end
end
