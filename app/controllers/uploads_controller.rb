class UploadsController < ApplicationController
  require 'roo'
  require 'pp'

  def upload
    puts "Entrando a upload"

    p params["file"].tempfile

    puts 'Importing Data'
    data = Roo::Spreadsheet.open(params["file"].tempfile) # opens spreadsheet

    headers = data.row(2) # get header row

    # # Creates empty array for excel
    # excel_array = Array.new

    # # Iterates spreadsheet
    # data.each_with_index do |row, row_index|
    #   if (row_index > 1)
    #     # Creates emtpy hash for each row
    #     row_hash = Hash.new
    #     # Iterates row by header
    #     headers.each_with_index do |head, head_index|
    #       # Stores each cell in hash
    #       row_hash.store("#{head}", row[head_index])
    #     end
    #     # Stores each has in array
    #     excel_array.push(row_hash)
    #   end
    # end

    # pp excel_array

    data_to_return = []
    
    # Ordena las celdas
    data.each_with_index do |row, index|

      if index > 1
        user = User.create(
              first_name: row[0],
              last_name: row[1],
              email: row[3],
              country: row[4],
              doc_type: row[5],
              doc_number: row[6]
            )
        
        p user.errors.messages

        student = Student.create(
              first_name: row[7],
              last_name: row[8],
              birthdate: row[9],
              email: row[3],
              user_id: user.id,
            )
        
        p student.errors.messages
        
        enrollment = Enrollment.create(
              group_id: row[19],
              student_id: student.id
        )

        p enrollment.errors.messages
        
        if user.errors || student.errors || enrollment.errors 

          # Defines where to start printing the errors.
          i = row.length + 1

          row[i] = user.errors
          row[i+1] = student.errors
          row[i+2] = enrollment.errors
          data_to_return << row
        end
      end
    end

    pp data_to_return
    pp sheet.to_csv
    render json: {data: data_to_return}, status: :ok
    puts "Rake end!"
  end
end
