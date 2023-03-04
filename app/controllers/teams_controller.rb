class TeamsController < ApplicationController
  def index
    @teams = Team.order(:slug).all
  end
end
