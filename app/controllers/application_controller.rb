class ApplicationController < ActionController::Base
  before_action :authenticate!
  
    def authenticate!
      if admin_user_signed_in?
        authenticate_admin_user!
    else
        authenticate_user!
    end
  end
end
