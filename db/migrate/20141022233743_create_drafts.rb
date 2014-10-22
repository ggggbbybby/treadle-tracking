class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
    	t.string :draft_name
    	t.timestamps
    end
  end
end
