require "open-uri"
class WinterClassController < ApplicationController

  # def build_student_ary(data, array_to_fill)
  #   data.each do |student_hash|
  #     student = Student.new
  #     student.name = student_hash["name"]
  #     student.photo_url = student_hash["photo_url"]
  #     student.section = student_hash["section"]
  #     student.twitter = student_hash["twitter"]
  #     array_to_fill << student
  #   end
  # end

  def am_dev
    @students = Student.fetch("am")

    # @am_students = []
    # url_am = "http://tslwebdev.herokuapp.com/am.json"
    # am_data = JSON.parse(open(url_am).read)

    # build_student_ary(am_data, @am_students)

    # am_data.each do |student_hash|
    #   student = Student.new
    #   student.name = student_hash["name"]
    #   student.photo_url = student_hash["photo_url"]
    #   student.section = student_hash["section"]
    #   student.twitter = student_hash["twitter"]
    #   @am_students << student
    # end
  end

  def pm_dev
    @students = Student.fetch("pm")

    # @pm_students = []
    # url_pm = "http://tslwebdev.herokuapp.com/pm.json"
    # pm_data = JSON.parse(open(url_pm).read)

    # build_student_ary(pm_data, @pm_students)

    # pm_data.each do |student_hash|
    #   student = Student.new
    #   student.name = student_hash["name"]
    #   student.photo_url = student_hash["photo_url"]
    #   student.section = student_hash["section"]
    #   student.twitter = student_hash["twitter"]
    #   @pm_students << student
    # end
  end

end
