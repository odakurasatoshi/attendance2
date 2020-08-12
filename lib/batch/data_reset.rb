class Batch::DataReset
  def self.data_reset
    # 出席履歴を全て削除
    Attendee.delete_all
    p "出席履歴を全て削除しました"
  end
end