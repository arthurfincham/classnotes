class AddTrainingSinceToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :training_since, :date
  end
end
