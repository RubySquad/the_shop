class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.string :name
      t.boolean :user_add
      t.boolean :price_edit
      t.boolean :item_edit
      t.boolean :order
      t.boolean :user_profile
      t.boolean :comment
      t.boolean :cart

      t.timestamps null: false
    end
  end
end
