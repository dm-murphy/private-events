class AddExclusiveToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :exclusive, :boolean, default: false
  end
end
