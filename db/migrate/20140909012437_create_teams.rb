class CreateTeams < ActiveRecord::Migration
	
  def up
    create_table :teams do |t|
   		t.integer "trainer_id"
    	# or t.references :trainer
    	t.string "name"
    	t.string "style"
    	t.text "strategy"

      t.timestamps
    end

    add_index("teams", "trainer_id")
    add_index("pages", "permalink")
  end

  def down
  	drop_table :teams
  end

end
