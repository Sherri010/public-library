class User < ActiveRecord::Base
  has_secure_password

 has_many :library_users, dependent: :destroy
 has_many :libraries, through: :library_users

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end
end