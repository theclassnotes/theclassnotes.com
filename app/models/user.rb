class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name
  
  has_attached_file :avatar, {
    :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :url => "/system/:hash.:extension",
    :hash_secret => "longSecretString"
  }
end
