YearbookApp::Application.routes.draw do

  root :to => "Students#index"

  # Read
  get "students" => "Students#index"
  get "students/:section" => "Students#section"

  # get("/students", {:controller => "Students", :action => "index"})

  # you had controller for students working with the index action and did an if else in the index template, which isn't bad bc I think we're talking about a single responsibility (sort of) displaying a students, section or all

  # get("/students/:section", {:controller => "Students", :action => "index"})
  # get("/students/:section", {:controller => "Students", :action => "section"})
end
