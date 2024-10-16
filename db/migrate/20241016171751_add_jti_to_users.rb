class AddJtiToUsers < ActiveRecord::Migration[7.1]
  def change
    # Adiciona a coluna jti como string e não permite valores nulos
    add_column :users, :jti, :string, null: false

    # Adiciona um índice único para a coluna jti
    add_index :users, :jti, unique: true
  end
end
