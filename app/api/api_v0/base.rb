module ApiV0
  class Base < Grape::API
    use ApiV0::Auth::Middleware
    version 'v0', using: :path
    
    mount Courses
    mount Orders
  end
end