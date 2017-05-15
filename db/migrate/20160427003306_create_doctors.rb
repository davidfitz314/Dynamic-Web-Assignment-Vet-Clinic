class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialty
      t.string :phone
      t.boolean :available

      t.timestamps null: false
    end
  end
end
