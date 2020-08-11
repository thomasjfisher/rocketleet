class User < ApplicationRecord
  #A user can only have one profile. They can update it.
  has_one :profile

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
