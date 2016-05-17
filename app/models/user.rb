class User < ActiveRecord::Base
  validates :email, :name, :uid, :provider, presence: true

  def self.find_or_create_from_omniauth(auth_hash)
    # Find or create a user
    # user = //something else here//
    # if !user.nil?
    #   return user that was found
    # else
    #   no user found, do something here
    # end
  end
end
