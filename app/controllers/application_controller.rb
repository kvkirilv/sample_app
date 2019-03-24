class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
  	render html: "Привет, МИР!!!!"
  end
end
