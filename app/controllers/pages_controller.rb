class PagesController < ApplicationController
  def home
  end

  def onboard
    @message= current_user.message.first
  end
end
