class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.integer :session_id
      t.string :title
      t.text :description

      t.timestamps
    end
    add_index :notes, :session_id
  end
end
