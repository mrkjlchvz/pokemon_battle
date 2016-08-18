class HomeController < ApplicationController
  def index
    @matchup = matchup.generate
  end

  private

    def matchup
      MatchupGenerator.new(Pokemon)
    end
end