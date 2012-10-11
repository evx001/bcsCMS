class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.integer :bcs_key
      t.integer :client_id
      t.string :program
      t.string :name_last_first
      t.string :referred_by
      t.string :intake_date
      t.date :admission_date
      t.date :date_of_birth
      t.string :city_state_zip
      t.string :phone
      t.string :race
      t.string :emergency_contact
      t.string :emergency_contact_relation
      t.integer :monthly_income_at_admission

      t.timestamps
    end
  end
end
