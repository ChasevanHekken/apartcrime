class Crime < ActiveRecord::Base

  def read
    csv = CSV.open("../../config/data/police_inct.csv", headers: true, header_converters: :symbol)
    csv.map do |row|
      {
        id:         row[:id].to_i,
        first_name: row[:first_name],
        last_name:  row[:last_name],
        created_at: Time.parse(row[:created_at]),
        updated_at: Time.parse(row[:updated_at])
      }
    end
  end


end
