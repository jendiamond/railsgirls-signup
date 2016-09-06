class RegistrationsController < Devise::RegistrationsController
  protected
  def after_sign_up_path_for(resource)
    new_user_path(resource)
  end

  def after_inactive_sign_up_path_for(resource)
    new_user_path(resource)
  end

  def after_sign_in_path_for(resource)
    user_tutorial_path(resource)
  end
end
