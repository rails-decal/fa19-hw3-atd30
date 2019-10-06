require_relative '../services/weather_service'

class MainController < ApplicationController

  def index
    # Uncomment and pass a parameter to the get function
    @w = WeatherService.get(params[:city])
    if @w 
      @temperature = ((@w[:temperature]-273) * 9.0 / 5 + 32).round(2)
    end

  end

end
