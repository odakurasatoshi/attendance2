require 'rails_helper'

RSpec.describe Course, type: :model do
  context "データが正しく保存される" do
    before do
      @course = Course.new
      @course.name = "Hello WebCamp"
      @course.save
    end

    it "入力してあるので保存される" do
      expect(@course).to be_valid
    end
  end

  context "データが正しく保存されない" do
    before do
      @course = Course.new
      @course.name = ""
      @course.save
    end

    it "nameが入力されていないので保存されない" do
      expect(@course).to be_invalid
      expect(@course.errors[:name]).to include("を入力してください")
    end
  end
end
