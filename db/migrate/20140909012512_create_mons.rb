class CreateMons < ActiveRecord::Migration

  def up
    create_table :mons do |t|
    	t.integer "trainer_id"
    	# or t.references "trainer"
    	# t.integer "team_id"
    	t.string "name"
    	t.string "nature"
    	t.string "item"
    	t.string "evs"
    	t.string "ivs"

    	t.string "move1"
    	t.string "move2"
    	t.string "move3"
    	t.string "move4"

    	t.text "description"

      t.timestamps
    end
    add_index("mons", "trainer_id")
  end

  def down
  	drop_table :mons
  end


end
