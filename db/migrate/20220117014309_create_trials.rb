class CreateTrials < ActiveRecord::Migration[7.0]
  def change
    create_table :trials do |t|
      t.integer :note_id
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :trials, :note_id
  end
end
