class Crime < ActiveRecord::Base

  def self.get_coordinates
    Crime.limit(10000).pluck(:point_y, :point_x).sample(300)
  end



end

