class Crime < ActiveRecord::Base

  def self.get_coordinates
    Crime.limit(100000).pluck(:point_y, :point_x).sample(10000)
  end

end

