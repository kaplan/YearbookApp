class Student
  attr_accessor :name, :photo_url, :section, :twitter

  def Student.help
    return "Student Class object has the following initializing instance variables: name, photo_url, section and twitter."
  end

  def Student.fetch(section)
    url = "http://tslwebdev.herokuapp.com/#{section}.json"
    hash_data = JSON.parse(open(url).read)

    students = Array.new
    hash_data.each do |student_hash|
      student_instance = Student.new(student_hash["name"],
                                     student_hash["photo_url"],
                                     student_hash["section"],
                                     student_hash["twitter"])
      students << student_instance
    end

    return students

  end

  def initialize (student_name, pic_url, class_section, twitter_handle)
    @name = student_name
    @photo_url = pic_url
    @section = class_section
    @twitter = twitter_handle
  end

end
