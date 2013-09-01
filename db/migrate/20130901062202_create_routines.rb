class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.string :day
      t.time :start_time
      t.time :end_time
      t.string :sub_name
      t.string :teacher_name
      t.string :faculty
      t.string :year
      t.string :section

      t.timestamps
    end
  end
end
