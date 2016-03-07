class AddTestTable < ActiveRecord::Migration
  def change
  	create_table :Test_table do |t|
  		t.string :name
  		t.integer :code
  		t.text :description
  	end
  end
end
