class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :lesonns
  has_many :students

  validates :last_name, presence: true
  validates :sub_last_name, presence: true
  validates :first_name, presence: true
  validates :sub_last_name, presence: true
  validates :email, presence: true
end
