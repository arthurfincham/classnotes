class DropGuidesTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :guides
  end
end
