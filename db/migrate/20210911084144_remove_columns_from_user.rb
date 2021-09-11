class RemoveColumnsFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :belt, :string
    remove_column :users, :training_since, :date
  end
end
