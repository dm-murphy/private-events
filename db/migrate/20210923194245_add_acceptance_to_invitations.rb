class AddAcceptanceToInvitations < ActiveRecord::Migration[6.1]
  def change
    add_column :invitations, :acceptance, :boolean, default: false
  end
end
