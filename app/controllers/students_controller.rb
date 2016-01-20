class StudentsController < ApplicationController

def index
end

def new
  @student = Student.new
end

def create
  @student = Student.new(student_params)

  if @student.save
    redirect_to root_path, notice: t("flash.register.create.notice")
  else
    render :new
  end
end

  private
  def student_params
    params
      .require(:student)
      .permit :name, :register_number, :status
  end

end
