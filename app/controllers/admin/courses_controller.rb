class Admin::CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!
  layout "backend"

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create(course_params)

    if @course.save
      redirect_to admin_courses_path, notice: '新增課程成功'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to admin_courses_path, notice: "修改成功" 
    else
      render :edit
    end

  end

  def destroy
  end

  private

  def course_params
    params.require(:course).permit(:title, :category, :price, :currency, :available, :duration, :friendly_id, :video, :intro)
  end

  def set_course
    @course = Course.find_by_friendly_id!(params[:id])
  end

end
