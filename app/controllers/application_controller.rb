class ApplicationController < ActionController::Base
  # White list
  before_action :authenticate_user!
end
