class Admin::PublicationsController < ApplicationController
  def create
    Faraday.post(publish_url) if Rails.env.production?
    redirect_to admin_path, notice: "Site has been scheduled to publish. This can take several minutes."
  end

  private

  def publish_url
    Rails.application.credentials.publish_url
  end
end
