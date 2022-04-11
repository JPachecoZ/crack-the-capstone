class CoursesController < ApplicationController
  
  #get/Course
  def show
    render json: course
  end

  #create/Course
  def create
    course = Course.new(course_params)

    if course.save
      render json: course, status: :created
    else
      render json: {errors: course.errors.full_messages}, status: :unprocessable_entity
    end
  end

  #Update/Course
  def update
    if course.update(course_params)
      render json: course
    else
      render json: { errors: course.errors.full_messages }, status: :unprocessable_entity
    end
  end

  #Delete/Course ????????????????????????????????????????????????
  def delete
    if course.destroy
      render json: "ok"
  end

  #delegate :destroy, to: :current_course

  private
  
  def course_params
    params.require(:name).permit(:description, :amount_usd, :amount_pen, :final_project_description, :project_summary)
  end
end