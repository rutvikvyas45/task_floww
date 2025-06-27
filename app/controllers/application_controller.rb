class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :authenticate_user!

 protected

  def after_sign_up_path_for(resource)
    # redirect wherever you want
    root_path
  end
end
