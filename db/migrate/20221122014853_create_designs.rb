class CreateDesigns < ActiveRecord::Migration[7.0]
  def change
    create_table :designs do |t|
      t.text :art_log_number
      t.decimal :width
      t.decimal :height
      t.text :lettering
      t.text :logo
      t.text :remarks
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
    add_index :designs, :art_log_number, unique: true
  end
end
