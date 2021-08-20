class CreateInvitations < ActiveRecord::Migration[6.1]
  def change
    create_table :invitations do |t|
      t.references :user
      t.references :event

      t.timestamps
    end
  end
end
