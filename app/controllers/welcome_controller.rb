class WelcomeController < ApplicationController
  def home

  end

  def about

  end

  def sbtop

  end

  def graphics

  end


  def test_flash

  end


  def bulk_push
    begin
      User.send_bulk_notifications(params[:message])
      redirect_to admin_notification_path, notice: "Insufficient rights!"
    rescue
      redirect_to admin_notification_path, alert: "Error"
    end

  end

end