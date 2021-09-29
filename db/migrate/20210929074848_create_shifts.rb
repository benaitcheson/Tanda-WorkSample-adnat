class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.integer :userid
      t.datetime :start
      t.datetime :finish
      t.integer :breaklength

      t.timestamps
    end
  end
end
