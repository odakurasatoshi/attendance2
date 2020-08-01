class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :course
  has_many :attendees
  def self.search(search)
      if search
        Student.where(['content LIKE ?', "%#{search}%"])
      else
        Student.all
      end
  end
end
