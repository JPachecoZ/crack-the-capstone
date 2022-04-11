class GroupsController < ApplicationController
  def index
    render json: Group.all
  end

  def show
    render json: @course.groups
  end

  def create
    @group = @course.groups.create(group_params)
  end

  def update
    if @group.update(group_params)
      render json: @group
    else
      render json: {errors: @group.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def delete
    @group.destroy
  end

  private

  def set_course
    @course = Course.find_by(name)
  end

  def group_params
    params.permit(:name)
  end
end
