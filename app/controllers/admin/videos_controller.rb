class Admin::VideosController < Admin::BaseController
  private

  def model
    Video
  end

  def clean_params
    params.require(:video).permit(:name, :description, :youtube_url)
  end
end
