class Update < ActiveRecord::Base
  attr_accessible :body, :title, :user_id
  has_attached_file :title_image, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "100x100>" }

  #belongs_to :user
end
