class CreateDycds < ActiveRecord::Migration
  def change
    create_table :dycds do |t|
      t.integer :bcs_key
      t.string :grade_level
      t.string :program_period
      t.string :funded
      t.date :enrollment_date
      t.string :last_name
      t.string :first_name
      t.string :gender
      t.date :birth_date
      t.string :address
      t.string :apartment
      t.string :borough
      t.integer :zip_code
      t.string :ethnicity
      t.string :grade
      t.string :school_attending
      t.string :primary_language
      t.string :elementary
      t.integer :school_year

      t.timestamps
    end
  end
end
