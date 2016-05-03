class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_secure_password

  def self.log_in(email, password)
    somebody = find_by(email: email)
    somebody && somebody.authenticate(password)
  end
end
