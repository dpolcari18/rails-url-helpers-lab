require 'pry'

class StudentsController < ApplicationController 
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    # binding.pry
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_back fallback_location: @student
  end
end