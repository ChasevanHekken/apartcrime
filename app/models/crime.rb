class Crime < ActiveRecord::Base

  def self.get_coordinates
    Crime.limit(40).pluck(:point_y, :point_x, :ucr_general)

  end

end


# 100	Homicide
# 200	Rape
# 300	Robbery (with Firearm or not)
# 400	Agggravated Assault (with Firearm or not)
# 500	Burglary (Residential or Non-Residential)
# 600	Theft (from Vehicle or not)
# 700	Motor Vehicle Theft and Recovered Stolen Motor Vehicle
