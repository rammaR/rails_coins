class Appointment < ApplicationRecord

    t.belongs_to :patients
    t.belongs_to :doctor

end