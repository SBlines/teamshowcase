class CreateTrainers < ActiveRecord::Migration

  def up
    create_table :trainers do |t|
    	# t.column "name", :string
    	t.string "name", :limit => 20
    	t.string "email", :default => "", :null => false

    	# t.datetime "created_at"
    	# t.datetime "updated_at"

      t.timestamps
    end
  end

  def down
  	drop_table :trainers
  end

end
