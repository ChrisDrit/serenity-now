class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.integer :patient_id
      t.string :title
      t.text :description

      t.timestamps
    end
    add_index :sessions, :patient_id
  end
end
