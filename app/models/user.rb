class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable, :rememberable,
  # :recoverable, :registerable
  devise :database_authenticatable, :validatable

  has_many :access_tokens,
           class_name: 'Doorkeeper::AccessToken',
           foreign_key: :resource_owner_id,
           dependent: :delete_all

  has_many :travel_plans, dependent: :destroy
  has_many :places

  class << self
    def authenticate(email, password)
      user = User.find_for_authentication(email: email)
      user.try(:valid_password?, password) ? user : nil
    end
  end

end
