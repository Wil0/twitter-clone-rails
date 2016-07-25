class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def heroku
    render html: 'We are in Heroku!!'
  end
end
