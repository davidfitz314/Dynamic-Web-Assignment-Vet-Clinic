class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :pet_name
      t.string :pet_type
      t.string :notes
      t.date :date_in
      t.date :date_out
      t.boolean :healthy
      t.references :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
