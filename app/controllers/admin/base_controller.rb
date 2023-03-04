class Admin::BaseController < ApplicationController
  helper_method :model

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
end
