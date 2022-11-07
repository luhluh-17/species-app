class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :confirmable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # roles
  def role_options
    [
      ['Student'],
      ['Professor'],
      ['Scientist'],
      ['Hobbyist'],
      ['Others']
    ]
  end
end
