class CreateGuides < ActiveRecord::Migration[6.1]
  def change
    create_table :guides do |t|
      t.date :date
      t.string :title
      t.string :instructor
      t.text :description
      t.timestamps
    end
  end
end
