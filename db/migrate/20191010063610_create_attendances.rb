class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.string :start_time
      t.string :end_time
      t.references :user,         null: false, foreign_key: true

      t.timestamps
    end
  end
end
