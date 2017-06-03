class CreateCrosses < ActiveRecord::Migration[5.0]
  def change
  	create_table :crosses do |t|
  		t.string	:greek_class, null: false
  		t.string  :semester
  		t.integer :year

  		t.timestamps
  	end
  end
end
