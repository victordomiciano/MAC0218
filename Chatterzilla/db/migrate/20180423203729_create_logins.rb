class CreateLogins < ActiveRecord::Migration[5.1]
  def change
    create_table :logins do |t|
      t.string :nome
      t.string :apelido

      t.timestamps
    end
  end
end
