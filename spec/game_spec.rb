require_relative '../classes/games/game'
require 'rspec'

describe Game do
  context 'Testing the game' do
    game = Game.new('2015-05-17', 'yes', '2011-11-15')
    it 'create new game with those arguments' do
      expect(game).to be_an_instance_of(Game)
    end
    it 'return correct multiplayer' do
      expect(game.multiplayer).to eq 'yes'
    end
    it 'return correct last_played_at' do
      expect(Date.parse(game.last_played_at).year).to eq 2011
    end
    it 'return false if parent method returns false || if last_played_at is older than 2 years' do
      expect(game.can_be_archived?).to eq false
    end
  end
end
