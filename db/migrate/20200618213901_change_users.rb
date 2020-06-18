class ChangeUsers < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.remove :email
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :username, null: false, index: { unique: true }
    end
  end
end
