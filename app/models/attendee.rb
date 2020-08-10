class Attendee < ApplicationRecord
  belongs_to :student
  belongs_to :lesson

  enum attendance_status: { 未承認: 0, 承認: 1 }

  def start_time
    attendance_date
  end

  def self.search(search) #self.はAttendee.を意味する
     if search
        where(['attendance_date LIKE ?', "%#{search}%"]) #検索とattendance_dateの部分一致を表示。
     # elsif search
       # where(['attendance_status LIKE ?', "%#{search}%"])
     else
       all #全て表示させる
    end
 end
end
