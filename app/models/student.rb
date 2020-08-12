class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :course, optional: true
  belongs_to :teacher, optional: true
  has_many :attendees, dependent: :destroy

  validates :last_name, presence: true
  validates :sub_last_name, presence: true
  validates :first_name, presence: true
  validates :sub_first_name, presence: true
  validates :email, presence: true

  def self.guest
    find_or_create_by!(last_name: '生徒', first_name: '花子', sub_last_name: 'セイト', sub_first_name: 'ハナコ', email: 'guest_student@example.com') do |student|
      student.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end
end
