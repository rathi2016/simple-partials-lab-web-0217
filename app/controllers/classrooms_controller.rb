class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    @student = @classroom.oldest_student
    binding.pry
    #load views/classrooms/show
  end

  def index
    @classrooms = Classroom.all
  end
end
