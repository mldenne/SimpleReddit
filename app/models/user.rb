class User < ActiveRecord::Base

  has_secure_password

  validates :username, uniqueness: true
  validates :email, uniqueness: true

  before_save :downcase_username

  def to_params
    username
  end

  def downcase_username
    self.username = username.downcase
  end

end
