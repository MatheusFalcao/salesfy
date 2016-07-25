class CreateCaixas < ActiveRecord::Migration
  def change
    create_table :caixas do |t|
      t.string :nome
      t.float :valor
      t.date :data

      t.timestamps
    end
  end
end
