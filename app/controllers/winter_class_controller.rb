require "open-uri"
class WinterClassController < ApplicationController

  def am_dev
    @students = Student.fetch(params["section"])
  end

  def pm_dev
    @students = Student.fetch(params["section"])
  end

  def index
    @students = Student.fetch(params["section"])
    @class_section = params["section"]
  end

end
