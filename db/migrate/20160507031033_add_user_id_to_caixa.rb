class AddUserIdToCaixa < ActiveRecord::Migration
  def change
    add_reference :caixas, :user, index: true
  end
end
