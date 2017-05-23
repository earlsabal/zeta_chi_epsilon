class CreateBrothers < ActiveRecord::Migration[5.0]
  def change
  	create_table :brothers do |t|
  		t.integer :scroll_number, null: false
  		t.string :full_name, null: false
  		t.string :greek_class, null: false
  		t.string :crossed

  		t.timestamps
  	end
  end
end
