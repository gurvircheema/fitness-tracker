class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :height_cm
      t.integer :weight_lbs
      t.string :phone
      t.string :time_zone

      t.timestamps
    end
  end
end
