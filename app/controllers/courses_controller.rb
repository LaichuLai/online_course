class CoursesController < ApplicationController

  def show
    @course = Course.find_by(friendly_id: params[:id])
  end

end
