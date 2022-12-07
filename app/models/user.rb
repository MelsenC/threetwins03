class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # I'm removing :registerable because we don't want users to be able to register
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable,
         :timeoutable, :trackable
end
