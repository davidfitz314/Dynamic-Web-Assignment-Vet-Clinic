class Patient < ActiveRecord::Base
  belongs_to :doctor
  validates :pet_name, :pet_type, :doctor, presence: true
  validate do
        errors[:date_in] << "Cannot be in the future" if date_in && date_in > Date.today
    end

end
