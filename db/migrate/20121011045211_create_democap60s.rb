class CreateDemocap60s < ActiveRecord::Migration
  def change
    create_table :democap60s do |t|
      t.integer :bcs_key
      t.integer :id
      t.string :name
      t.string :birth_date
      t.string :ethnicity
      t.string :race
      t.integer :num_in_family
      t.integer :yearly_income
      t.integer :epc_points
      t.integer :amount_under_over_poverty
      t.integer :percent_under_over_poverty

      t.timestamps
    end
  end
end
