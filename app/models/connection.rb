class Connection < ActiveRecord::Base
  attr_accessible :address, :age, :cd, :county, :dob, :language_ethnicity, :marital_status, :name, :race, :sex
end
