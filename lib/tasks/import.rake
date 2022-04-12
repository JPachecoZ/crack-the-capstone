require 'roo'

namespace :import do
  desc "Import data from spreadsheet"
  task data: :environment do
    puts 'Importing Data'
    data = Roo::Spreadsheet.open('lib/data.xslsx') # opens spreadsheet
    headers = data.row(2) # get header row
    data.each_with_index do |row, index|
      next if index == 0
      user_data = Hash[[headers, row].transpose]
      p user_data
    end
    puts "Rake end!"
  end
end
