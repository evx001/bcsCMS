class Award < ActiveRecord::Base
  attr_accessible :admission_date, :bcs_key, :city_state_zip, :client_id, :date_of_birth, :emergency_contact, :emergency_contact_relation, :intake_date, :monthly_income_at_admission, :name_last_first, :phone, :program, :race, :referred_by
end
