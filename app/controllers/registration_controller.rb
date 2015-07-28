class RegistrationController < ApplicationController
	protected

  def after_sign_up_path_for(resource)
    # Create new, empty message for user
    @messsage = resource.messages.build(title: "My Message")
    @message.save

    # Redirect to onboarding path
    onboard_path
  end
end
