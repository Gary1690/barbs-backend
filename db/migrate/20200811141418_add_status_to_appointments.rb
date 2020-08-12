class AddStatusToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :status, :boolean
  end
end
