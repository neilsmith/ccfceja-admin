class Admin::TeamsController < Admin::BaseController
  def index
    @records = Team.order(:slug).all
  end

  private

  def model
    Team
  end

  def clean_params
    params.require(:team).permit(:slug, :name, :manager_1_position, :manager_1_name, :manager_2_position, :manager_2_name, :manager_3_position, :manager_3_name, :manager_4_position, :manager_4_name, :fa_table_lrcode, :fa_table_division_season, :fa_fixture_lrcode, :fa_fixture_division_season, :players_as_paragraph, :team_photo, :twitter_handle)
  end
end
