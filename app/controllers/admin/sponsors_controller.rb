class Admin::SponsorsController < Admin::BaseController
  private

  def model
    Sponsor
  end

  def clean_params
    params.require(:sponsor).permit(:name, :url, :team_id, :image)
  end
end
