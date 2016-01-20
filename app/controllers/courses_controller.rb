class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to root_path, notice: t("flash.register.create.notice")
    end
  end

  private
  def course_params
    params
      .require(:course)
        .permit :name, :description, :status
  end
end
