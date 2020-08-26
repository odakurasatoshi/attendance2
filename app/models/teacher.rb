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
  validates :sub_first_name, presence: true
  validates :email, presence: true

  def self.guest
    find_or_create_by!(last_name: '先生', first_name: '太郎', sub_last_name: 'センセイ', sub_first_name: 'タロウ', email: 'guest_teacher@example.com') do |teacher|
      teacher.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end
end
