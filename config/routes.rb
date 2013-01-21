YearbookApp::Application.routes.draw do
  get("/am", {:controller => "WinterClass", :action => "am_dev"})
  get("/pm", {:controller => "WinterClass", :action => "pm_dev"})
end
