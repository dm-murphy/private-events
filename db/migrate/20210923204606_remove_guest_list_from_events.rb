class RemoveGuestListFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :guest_list, :string
  end
end
