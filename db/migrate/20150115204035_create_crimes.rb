class CreateCrimes < ActiveRecord::Migration
  def change
    create_table :crimes do |t|
      t.integer   :dc_dist
      t.string    :sector
      t.string    :dispatch_date_time
      t.string    :dispatch_date
      t.string    :dispatch_time
      t.integer   :hour
      t.string    :dc_key
      t.string    :location_block
      t.integer   :ucr_general
      t.integer   :objectid
      t.string    :text_general_code
      t.float     :point_x
      t.float     :point_y
      t.integer   :shape

    end
  end
end