class GradesController < ApplicationController
  def new
  end
  def create
    assignment = Assignment.find(params[:assignment_id])
    if params[:current_grade_id].present?
      grade = Grade.find(params[:current_grade_id])
      grade.update_attributes(params[:grade])
    else
      @grade = Grade.create(params[:grade])
      student = Student.find(params[:student_id])
      student.grades << @grade
      assignment.grades << @grade
    end
    redirect_to assignment_path(assignment.id)
  end
  def edit
    binding.pry
    render :new
  end

  def update
  end


  def edit
  end

end