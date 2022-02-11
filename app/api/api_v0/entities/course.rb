module ApiV0
  module Entities
    class Course < Entities::Base
      expose :title
      expose :category
      expose :intro
      expose :video
      expose :price
      expose :currency
      expose :duration
    end
  end
end
