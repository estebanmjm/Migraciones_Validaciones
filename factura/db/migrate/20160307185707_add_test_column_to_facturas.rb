class AddTestColumnToFacturas < ActiveRecord::Migration
  def change
  	add_column :facturas, :test_column, :integer
  end
end
