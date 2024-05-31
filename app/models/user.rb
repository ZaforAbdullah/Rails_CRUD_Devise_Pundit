class User < ApplicationRecord
  # Devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Enum for roles
  enum role: { user: 'user', moderator: 'moderator', admin: 'admin' }

  # Validations
  validates :role, presence: true, inclusion: { in: roles.keys }

  has_many :posts

  # Callbacks
  before_validation :set_default_role, if: :new_record?

  # Methods
  def role?(role)
    self.role == role.to_s
  end

  private

  def set_default_role
    self.role ||= 'user'
  end
end