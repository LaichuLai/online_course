module ApiV0
  class Orders < Grape::API
    desc "Create new order"
    post "/orders" do
      course = Course.new(declared(params, include_missing: false).except(:access_key))
      if course.save
        present course, with: ApiV0::Entities::Course
      else
        raise StandardError
      end
    end
  end
end