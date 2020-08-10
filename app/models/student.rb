class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :course
  belongs_to :teacher, optional: true
  has_many :attendees, dependent: :destroy

  validates :last_name, presence: true
  validates :sub_last_name, presence: true
  validates :first_name, presence: true
  validates :sub_first_name, presence: true
  validates :email, presence: true
end
