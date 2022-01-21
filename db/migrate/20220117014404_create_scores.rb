class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.integer :trial_id
      t.boolean :success

      t.timestamps
    end
    add_index :scores, :trial_id
  end
end
