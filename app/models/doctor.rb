class Doctor < ActiveRecord::Base
    has_many :patients
    validates :name, :specialty, :phone, presence: true
end
