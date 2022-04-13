class UploadsController < ApplicationController
  require 'roo'
  require 'pp'

  def upload
    puts "Entrando a upload"

    p params["file"].tempfile

    puts 'Importing Data'
    data = Roo::Spreadsheet.open(params["file"].tempfile) # opens spreadsheet

    headers = data.row(1) # get header row

    # Ordena las celdas
    data.each_with_index do |row, index|
      # user_data = Hash[[headers, row].transpose]
      if ( index > 1 )
        pp(row)
      end
    end

    render json: {data: data}, status: :ok
    puts "Rake end!"
  end
end
