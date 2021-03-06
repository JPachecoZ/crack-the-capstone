class UploadsController < ApplicationController
  require 'roo'
  require 'pp'

  def index
    render json: 'Server Online'
  end

  def upload
    puts 'Entrando a upload'

    file = params['file'].tempfile

    begin
      puts 'Importing Data'

      data = Roo::Spreadsheet.open(file) # opens spreadsheet

      headers = data.row(2) # get header row

      data_to_return = {
        registers_created: 0,
        registers_with_errors: 0,
        total_data_analized: 0,
        data_to_inspect: []
      }

      # Ordena las celdas
      data.each_with_index do |row, index|
        next unless index > 1

        user = if User.find_by(email: row[3]).nil?

                 User.create(
                   first_name: row[0],
                   last_name: row[1],
                   email: row[3],
                   password: 'capstone2022',
                   country: row[4],
                   doc_type: row[5],
                   doc_number: row[6]
                 )

               else
                 User.find_by(email: row[3])

               end

        if Student.find_by(first_name: row[10]).nil? || Student.find_by(first_name: row[10]) != nil && Student.find_by(first_name: row[10]).user_id != user.id

          student = Student.create(
            first_name: row[10],
            last_name: row[11],
            birthdate: row[13],
            email: row[3],
            user_id: user.id
          )

          p student.errors.messages

        else
          student = Student.find_by(first_name: row[10])

        end

        enrollment = Enrollment.create(
          group_id: row[23],
          student_id: student.id
        )

        p enrollment.errors.messages

        data_to_return[:total_data_analized] += 1

        if user.errors.size != 0 || student.errors.size != 0 || enrollment.errors.size != 0
          # Defines where to start printing the errors.
          i = row.length + 1

          row[i] = user.errors
          row[i + 1] = student.errors
          row[i + 2] = enrollment.errors
          data_to_return[:data_to_inspect] << row
          data_to_return[:registers_with_errors] += 1
        else
          data_to_return[:registers_created] += 1
        end
      end

      render json: { data: data_to_return }, status: :ok
      puts 'Rake end!'
    rescue StandardError
      render json: { data: data_to_return, meesage: 'File type not Allowed' }, status: :unprocessable_entity
    end
  end
end
