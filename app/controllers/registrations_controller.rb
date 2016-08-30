class RegistrationsController < Devise::RegistrationsController
  protected

  def after_inactive_sign_up_path_for(resource)
    '/users/new'
  end

  def after_sign_up_path_for(member)
    '/users/new'
  end
end
