class CreateOutcomes < ActiveRecord::Migration[7.0]
  def change
    create_table :outcomes do |t|
      t.integer :goal_id
      t.integer :note_id

      t.timestamps
    end
    add_index :outcomes, :goal_id
    add_index :outcomes, :note_id
  end
end
