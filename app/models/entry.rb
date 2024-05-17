class Entry < ApplicationRecord
  # talks to the "entries" table
  def change 
    create_table :entries do |t|
      t.string "title"
      t.text "description"
      t.date "posted_on"
      t.integer "place_id"

      t.timestamps
    end 
  end 
end
