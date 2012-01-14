class ApplicationController < ActionController::Base

  helper :all
  protect_from_forgery

  before_filter :authenticate

  protected

  def authenticate
    if ENV['enable_auth'] == 1 || APP_CONFIG[:enable_auth] == 1
      authenticate_or_request_with_http_basic do |username, password|
        (username == ENV['auth_username'] || username == APP_CONFIG[:auth_username]) && (password == ENV['auth_password'] || password == APP_CONFIG[:auth_password])
      end
    end
  end

end
