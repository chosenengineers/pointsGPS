class User < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode

  def self.load
    require 'csv'
    CSV.foreach('lib/data/cur.csv', headers: true) do |row|
      user = find_by_id(row['ID']) || new
      attributes = {latitude: row['lat'].to_f, longitude: row['lng'].to_f, title: row['ID'].to_hash}
      begin 
        User.create!(attributes)
      rescue => e
        "User failed to create with #{attributes} attributes because of #{e.message}"
      end
    end
  end

end
