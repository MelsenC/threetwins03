class AddStatusToDesigns < ActiveRecord::Migration[7.0]
  def change
    add_column :designs, :status, :boolean
  end
end
