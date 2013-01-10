class Update < ActiveRecord::Base
  attr_accessible :body, :title, :title_image, :user_id
end
