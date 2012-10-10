class CreateCap60mails < ActiveRecord::Migration
  def change
    create_table :cap60mails do |t|
      t.integer :bcs_key
      t.integer :id
      t.string :name
      t.date :birth_date
      t.string :primary_caregiver
      t.integer :home_phone
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
