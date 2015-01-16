require 'populator'
require 'csv'

class Crime < ActiveRecord::Base
  def self.read
    csv_text = File.read(File.join(Rails.root, 'config', 'data', 'police_inct.csv'))
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Crime.create!(:date_time => row['DISPATCH_DATE'], :crime_code => row['UCR_GENERAL'], :description => row['TEXT_GENERAL_CODE'], :point_x => row['POINT_X'], :point_y => row['POINT_Y'])
    end
  end
end

