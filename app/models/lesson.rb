class Lesson < ApplicationRecord
  # 外部キーは空白だとNG、データは絶対必要。でも↓のオプションはデータなくてもいいよ、というおまじない。
  belongs_to :area_class, optional: true
  belongs_to :teacher, optional: true
  belongs_to :genre, optional: true
  belongs_to :time_class, optional: true
  has_many :attendees
  has_many :no_lessons
  attachment :image
  validates :area_class_id, presence: true
  validates :genre_id, presence: true
  validates :time_class_id, presence: true
  validates :teacher_id, presence: true
end
