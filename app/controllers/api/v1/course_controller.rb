class Api::V1::CourseController < ApplicationController

  def create
    course = Course.new(course_params)
    if course.save
      render_status_ok
    else
      @error = course.errors
    end
  end

  def index
    @pageno = params[:pageno]
    @pagesize = params[:pagesize]
    courses = Course.order(created_at: :desc)
    @total = courses.size
    @courses = courses.page(@pageno).per(@pagesize)
  end

  def show
    id = params[:id]
    @course = Course.find(id)
  end

  def course_params
    params.permit(:name, :price, :actual_price, :finish_date, :group_number, :main_pic, detail_pics: [])
  end
end
