class User < ApplicationRecord
  before_save { self.role ||= :user }

  validates :username,
            presence: true,
            uniqueness: { message: "The username %{value} is already taken"}
  validates :email,
            presence: true,
            uniqueness: { message: "The email %{value} is already taken"},
            with: :valid_email?
  validates :password, presence: true, length: { minimum: 6, maximum: 20 }
  validates :role, with: :valid_role?

  enum role: [:user, :admin]

  has_many :lists, dependent: :destroy

  private
  def valid_role?
    role == 1 || role == 0
  end

  def valid_email?
    /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i == email
  end
end
