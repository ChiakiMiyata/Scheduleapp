class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.date :startdate
      t.date :enddate
      t.boolean :allday, default: false
      t.string :schedulememo

      t.timestamps
    end
  end
end
