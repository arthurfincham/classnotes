class AddBeltToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :belt, :string
  end
end
