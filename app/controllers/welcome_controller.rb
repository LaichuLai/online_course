class WelcomeController < ApplicationController

  def index
    @courses = Course.where(available: true)
  end
end
