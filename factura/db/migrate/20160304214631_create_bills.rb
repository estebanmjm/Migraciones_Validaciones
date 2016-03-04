class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :codigo
      t.datetime :fecha
      t.float :valor
      t.string :dependencia
      t.string :beneficiario
      t.string :depositante

      t.timestamps null: false
    end
  end
end
