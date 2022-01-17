class CreatePlanOfCares < ActiveRecord::Migration[7.0]
  def change
    create_table :plan_of_cares do |t|
      t.integer :patient_id
      t.text :description

      t.timestamps
    end
    add_index :plan_of_cares, :patient_id
  end
end
