class CreatePositions < ActiveRecord::Migration[5.0]
  def change
  	create_table :positions do |t|
  		t.string :name, null: false
  		t.string :email
  		t.string :picture
  		t.references :brother
  	end
  end
end
