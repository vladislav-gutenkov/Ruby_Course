require "json"
require "csv"

path_to_csv = "/Users/vladislav/Ruby_Course/6_file_system/2_csv_format/movements/example.csv"

def convert_csv_to_json(path_to_csv)
  file_csv = CSV.read(path_to_csv, headers: true)
  file_josn = File.new(path_to_csv.sub(/\.csv/, ".json"), "a:UTF-8")

  value_json = []
  json = {movements: value_json}

  file_csv.each do |row|
    hash = {}
    row.each do |header, value|
      hash[header] = value
    end
    value_json << hash
  end

  File.open(file_josn, "a") do |file|
    file.write(json.to_json)
  end
end

convert_csv_to_json(path_to_csv)
