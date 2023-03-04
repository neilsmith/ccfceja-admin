class Admin::BaseController < ApplicationController
  before_action :user_check

  helper_method :model

  def welcome
  end

  def index
    @records = model.all
  end

  def new
    @record = model.new
  end

  def create
    @record = model.new(clean_params)
    @record.save!

    redirect_to action: "index", notice: "#{@record} was succcessfully created."
  end

  def edit
    @record = model.find(params[:id])
  end

  def update
    @record = model.find(params[:id])
    @record.attributes = clean_params
    @record.save!

    redirect_to action: "index", notice: "#{@record} was succcessfully updated."
  end

  private

  def user_check
    @user = session[:userinfo]
    if @user.nil?
      redirect_to "/login"
    end
  end
end
