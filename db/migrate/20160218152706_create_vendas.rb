class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.references :user, index: true
      t.date :data

      t.timestamps
    end
  end
end