class CreateCrimes < ActiveRecord::Migration
  def change
    create_table :crimes do |t|
      t.integer   :point_x
      t.integer   :point_y
      t.string    :crime_code
      t.string    :date_time
      t.string    :description

      t.timestamps null: false
    end
  end
end
