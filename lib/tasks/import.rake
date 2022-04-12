require 'roo'
require 'pp'

namespace :import do
  desc "Import data from spreadsheet"
  task data: :environment do
    puts 'Importing Data'
    data = Roo::Spreadsheet.open('lib/test.xlsx') # opens spreadsheet
    headers = data.row(1) # get header row

    # Ordena las celdas
    data.each_with_index do |row, index|
      user_data = Hash[[headers, row].transpose]
    end

    puts "Rake end!"
  end  
end
