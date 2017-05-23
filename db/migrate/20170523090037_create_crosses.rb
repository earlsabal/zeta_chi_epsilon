class CreateCrosses < ActiveRecord::Migration[5.0]
  def change
  	create_table :crosses do |t|
  		t.string	:greek_class, null: false
  		t.string  :semester
  		t.integer :year
  	end
  end
end
