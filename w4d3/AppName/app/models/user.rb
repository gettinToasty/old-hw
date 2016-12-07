class User < ApplicationRecord
  attr_reader :password

  before_validation :ensure_session_token
  validates :username, :session_token, presence: true
  validates :password_digest, presence: { message: "Password can't be blank" }
  validates :password, length: { minimum: 8, allow_nil: true }

  def self.find_by_credentials(username, pw)
    user = self.find_by(username: username)
    return user if user && BCrypt::Password.new(user.password_digest).is_password?(pw)
    nil
  end

  def self.generate_session_token
    SecureRandom.url_safe_base64
  end

  def reset_session_token!
    self.session_token = User.generate_session_token
    self.save!
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def password=(arg)
    @password = arg
    self.password_digest = BCrypt::Password.create(arg)
  end

end
