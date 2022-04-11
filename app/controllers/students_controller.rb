class StudentsController < ApplicationController
  def index
    render json: Student.all
  end

  def show
    render json: @user.students
  end

  def create
    @student = @user.students.create(student_params)
  end

  def update
    if @student.update(student_params)
      render json: @student
    else
      render json: {errors: @student.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def delete
    @student.destroy
  end

  private

  def set_user
    @user = User.find_by(current_email)
  end

  def student_params
    params.require(:email).permit(:first_name, :last_name, :birthdate, :moodle_password, :goodle_password)
  end
end
