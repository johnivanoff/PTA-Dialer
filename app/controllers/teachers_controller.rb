class TeachersController < ApplicationController
  before_filter :require_login

  # GET /teachers
  # GET /teachers.json
  def index
    @teachers = Teacher.order('last_name')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teachers }
    end
  end

  # GET /teachers/1
  # GET /teachers/1.json
  def show
    @teacher = Teacher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @teacher }
    end
  end

  # GET /teachers/1/students
  # GET /teachers/1students.json
  def students
    @teacher = Teacher.find(params[:teacher_id])
    @students = Student.find_all_by_teacher_id(params[:teacher_id])

    respond_to do |format|
      format.html # students.html.erb
      format.json { render json: @students }
    end
  end


end
