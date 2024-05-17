class Place < ApplicationRecord
  # talks to the "places" table
  def change
    create_table :places do |t|
      t.string "name"

      t.timestamps 
    end 
  end 
end
