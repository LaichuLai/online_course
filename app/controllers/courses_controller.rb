class CoursesController < ApplicationController

  def index
    @courses = current_user.courses.all
    @orders = current_user.orders.all
  end

  def show
    @course = Course.find_by(friendly_id: params[:id])
  end

  def buy
    unless current_user
        redirect_to new_user_session_path, alert: "請先登入帳號"
    else
      @course = Course.find_by(friendly_id: params[:id])
      unless @course.has_user(current_user)
        @order = Order.create( :user => current_user, :course => @course)
        if @order.save
          redirect_to root_path
        else 
          render :js => "alert('fail');"
        end
      else
        redirect_to course_path(@course), alert: "已經購買過了"
      end
    end
  end

end
