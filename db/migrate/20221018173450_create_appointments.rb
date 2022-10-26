class CreateAppointments < ActiveRecord::Migration[7.0]
  def change

    create_table :doctors do |t|
      t.string :name
      t.timestamps
    end

    create_table :patients do |t|
      t.string :name
      t.timestamps
    end

    create_table :appointments do |t|
      t.belongs_to :doctor
      t.belongs_to :patient
      t.datetime :appointment_date
      t.timestamps
    end
  end
end
