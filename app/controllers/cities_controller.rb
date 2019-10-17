class CitiesController < ApplicationController
  def index
  end

  def view
    @cities = $cities
    if params[:city] == nil
      render plain: "Add a city"
    elsif !@cities.key?(params[:city])
      render plain: params[:city].capitalize + " hasn't been added"
    end
  end

  def new
  end

  def create
    c = City.new({:name => params[:city], :population => params[:population], :landmark => params[:landmark]})
    c.save
    redirect_to "cities/view"
  end

  def update
  end
end
