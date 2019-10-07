require_relative '../services/weather_service'

class MainController < ApplicationController

  def index
    @w = WeatherService.get(params[:city])
    if @w 
      @temperature = ((@w[:temperature]-273) * 9.0 / 5 + 32).round(2)
      
      city = City.new(
      name: params[:city],
      description: @w[:description],
      temperature: @temperature
    )

    city.save
    end

    

  end

end
