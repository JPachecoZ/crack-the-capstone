class EnrollmentsController < ApplicationController
  def index
    render json: Enrollment.all
  end

  def show
    render json: @enrollment
  end

  def create

  end

  def update
  end

  def delete
  end

  private

  def set_student
    @student = Student.find_by(email)
  end

  def set_grou
    @group = Group.find_by(name)
  end
end
