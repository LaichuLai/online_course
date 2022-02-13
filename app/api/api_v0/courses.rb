module ApiV0
  class Courses < Grape::API
    desc "Get courses index"
    get "/courses" do
      courses = Course.where(available: true)
      present courses, with: ApiV0::Entities::Course
    end
  end
end