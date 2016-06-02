class AdminController < ApplicationController

  http_basic_authenticate_with name: 'admin', password: 'bhf'
  # somebody how doesn't know the login data can't open the login action

  def login
    # bhf checks for this session in a before_filter, if it's true user will pass
    session[:is_admin] = true
    redirect_to bhf.root_url
  end

end