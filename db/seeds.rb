require 'csv'

csv_file = File.read(Rails.root.join('lib', 'seeds', 'covid_19_data.csv'))
CSV.parse(csv_file, :headers => true).each do |row|
  ob = CovidObservation.new
  ob.observation_date = row['ObservationDate']
  ob.province = row['Province/State']
  ob.country = row['Country/Region']
  ob.last_update = row['Last Update']
  ob.confirmed = row['Confirmed']
  ob.deaths = row['Deaths']
  ob.recovered = row['Recovered']
  ob.save
  puts "SNo #{row['SNo']} saved"
end
