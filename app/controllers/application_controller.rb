class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource_or_scope)
    if request.env['omniauth.origin']
      request.env['omniauth.origin']
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end
end
