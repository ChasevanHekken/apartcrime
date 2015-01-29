class Crime < ActiveRecord::Base
  def self.homicide
    Crime.where(ucr_general: 100).pluck(:point_y, :point_x)
  end

  def self.rape
    Crime.where(ucr_general: 200).pluck(:point_y, :point_x)
  end

  def self.robbery
    Crime.where(ucr_general: 300).pluck(:point_y, :point_x)
  end

  def self.assault
    Crime.where(ucr_general: 400).pluck(:point_y, :point_x)
  end

  def self.burglary
    Crime.where(ucr_general: 500).pluck(:point_y, :point_x)
  end

  def self.theft
    Crime.where(ucr_general: 600).pluck(:point_y, :point_x)
  end

  def self.gta
    Crime.where(ucr_general: 700).pluck(:point_y, :point_x)
  end
end

# 100	Homicide
# 200	Rape
# 300	Robbery (with Firearm or not)
# 400	Agggravated Assault (with Firearm or not)
# 500	Burglary (Residential or Non-Residential)
# 600	Theft (from Vehicle or not)
# 700	Motor Vehicle Theft and Recovered Stolen Motor Vehicle
