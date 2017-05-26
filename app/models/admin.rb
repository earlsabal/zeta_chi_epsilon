class Admin < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(username, plain_text_password)
    @admin = Admin.find_by(username: username)
    if @admin && @admin.password == plain_text_password
      @admin
    else
      nil
    end
  end
end
