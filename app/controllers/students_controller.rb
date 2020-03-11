class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate_student
    set_student

    if @student.active == false 
      @student.active = true 
    else 
      @student.active = false 
    end 

    @student.save 
    redirect_to "/students/#{@student.id}"
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end