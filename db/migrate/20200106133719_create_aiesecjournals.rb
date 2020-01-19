class CreateAiesecjournals < ActiveRecord::Migration[6.0]
  def change
    create_table :aiesecjournals do |t|
      t.text :event
      t.text :goal
      t.string :successstory
      t.string :failurestory
      t.string :note

      t.timestamps
    end
  end
end
