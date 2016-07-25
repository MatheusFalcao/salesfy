class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.text :desc
      t.float :preco
      t.integer :estoque
      t.references :user, index: true

      t.timestamps
    end
  end
end
