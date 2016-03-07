class RenameColumnDependeciaToDepartamento < ActiveRecord::Migration
  def change
  	rename_column :facturas, :dependencia, :departamento
  end
end
