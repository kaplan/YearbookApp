class StudentsController < ApplicationController

  # def am_dev
  #   # @students = Student.fetch(params["section"])
  #   @students = Student.all
  # end

  # def pm_dev
  #   # @students = Student.fetch(params["section"])
  #   @students = Student.all
  # end

  def index
     @students = Student.all
  end

  def section
    @class_section = params[:section]
    students_all = Student.all
    @students = students_all.select do |s|
      s.section.include?(@class_section)
    end




    # section = params[:section]
    # students_hash_data = JSON.parse(open("http://tslwebdev.herokuapp.com/#{section}.json").read)

    # students_hash_data.each do |student_hash|
    #   student = Student.new
    #   student.name = student_hash["name"]
    #   student.photo_url = student_hash["photo_url"]
    #   student.section = student_hash["section"]
    #   student.twitter = student_hash["twitter"]
    #   student.save
    # end

    # @students = Student.fetch(params[:section])
    # @class_section = params[:section]
  end

end

# student = Student.create({"name" => student_hash["name"], "photo_url" => student_hash["photo_url"], "section" => student_hash["section"], "twitter" => student_hash["twitter"]})
