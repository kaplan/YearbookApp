YearbookApp::Application.routes.draw do
  # get("/am", {:controller => "WinterClass", :action => "am_dev"})
  # get("/pm", {:controller => "WinterClass", :action => "pm_dev"})
  get("/students", {:controller => "Students", :action => "index"})


  # you had controller for students working with the index action and did an if else in the index template, which isn't bad bc I think we're talking about a single responsibility (sort of) displaying a students, section or all

  # get("/students/:section", {:controller => "Students", :action => "index"})
  get("/students/:section", {:controller => "Students", :action => "section"})
end
