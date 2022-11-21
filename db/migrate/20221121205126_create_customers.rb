class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.text :code
      t.text :name, limit: 100
      t.boolean :status

      t.timestamps
    end
  end
end
