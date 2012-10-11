class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.string :name
      t.string :marital_status
      t.string :sex
      t.date :dob
      t.integer :age
      t.string :language_ethnicity
      t.string :race
      t.string :address
      t.string :county
      t.integer :cd

      t.timestamps
    end
  end
end
