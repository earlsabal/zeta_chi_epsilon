class CreateBrothers < ActiveRecord::Migration[5.0]
  def change
  	create_table :brothers do |t|
  		t.string :scroll_number, null: false
  		t.string :full_name, null: false
  		t.references :cross

  		t.timestamps
  	end
  end
end
