class UploadsController < ApplicationController
  require 'roo'
  require 'pp'

  def upload
    puts 'Importing Data'
    data = Roo::Spreadsheet.open('lib/test.xlsx') # opens spreadsheet
    headers = data.row(1) # get header row

    # Ordena las celdas
    data.each_with_index do |row, index|
      user_data = Hash[[headers, row].transpose]
    end

    render json: data
    puts "Rake end!"
  end
end
