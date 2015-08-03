class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :pass
      t.references :user_role, index: true, foreign_key: true
      t.string :name
      t.string :surname
      t.string :phone
      t.time :call_time_from
      t.time :call_time_till
      t.string :email
      t.string :address
      t.string :comment

      t.timestamps null: false
    end
  end
end
