class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :course
  belongs_to :teacher
  has_many :attendees, dependent: :destroy


  validates :last_name, presence: true
  validates :sub_last_name, presence: true
  validates :first_name, presence: true
  validates :sub_last_name, presence: true
  validates :email, presence: true

  def self.search(search)
      if search
        Student.where(['content LIKE ?', "%#{search}%"])
      else
        Student.all
      end
  end
end
