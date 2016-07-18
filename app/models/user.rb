class User < ActiveRecord::Base

  validates :username, uniqueness: true
  validates :email, uniqueness: true

  before_save :downcase_username

  has_secure_password

  def to_params
    username
  end

  def downcase_username
    self.username = username.downcase
  end

end
