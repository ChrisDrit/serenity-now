class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.integer :plan_of_care_id
      t.string :title
      t.text :description

      t.timestamps
    end
    add_index :goals, :plan_of_care_id
  end
end
