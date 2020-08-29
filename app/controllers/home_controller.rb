class HomeController < ApplicationController
  def index
    @covid_cases = CovidCase.joins(:state).group("states.name")
  end
end
