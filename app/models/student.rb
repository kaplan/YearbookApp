class Student
  # class level instance variables as symbols v. strings
  # symbols have fewer available methods (but can help signal specific uses??)
  # attr_accessor(:name, :photo_url, :section, :twitter)
  attr_accessor "name"
  attr_accessor "photo_url"
  attr_accessor "section"
  attr_accessor "twitter"

  # def introduce
  #   if @twitter == ""
  #     @twitter = "<a href=\"https://twitter.com/#{@twitter}\" target=\"_blank\"> (@#{@twitter})</a>"
  #     # return "NOTHING"
  #   else
  #     @twitter = ", not a big fan of the Twitter"
  #   end
  #   return "#{@name} (@#{@twitter}) is in the Web Dev #{@section.upcase} class."
  # end

  # def display_name
  #   return @name
  # end

end
