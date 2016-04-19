class HomeController < ApplicationController
  def index
    @name = params[:name] || "Jeremy"
  end

  def rosa
    @best_dog = "zomg yass"
  end
end
