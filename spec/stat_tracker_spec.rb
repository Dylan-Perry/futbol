require './lib/stat_tracker'



RSpec.describe StatTracker do
  before(:each) do
    
    game_path = './data/games_fixture.csv'
    team_path = './data/teams.csv'
    game_teams_path = './data/game_teams_fixture.csv'
    
    locations = {
      games: game_path,
      teams: team_path,
      game_teams: game_teams_path
    }
    
    @stat_tracker = StatTracker.from_csv(locations)
    require 'pry'; binding.pry
  end

  describe '#initialize' do
    it 'exists' do
      expect(@stat_tracker).to be_a(StatTracker)
    end
  end

  describe '#percentage_home_wins' do
    it 'calculates the percentage home wins ' do
      expect(@stat_tracker.percentage_home_wins).to eq(53)
    end
  end
end