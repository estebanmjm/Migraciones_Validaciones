class RenameTableBillsToFacturas < ActiveRecord::Migration
  def change
  	rename_table :bills, :facturas
  end
end
