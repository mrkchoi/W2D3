require 'towers_of_hanoi'

RSpec.describe Game do
  subject(:game) {Game.new}
  
  describe '#initialize' do
    it 'should initialize towers to an empty 2d array or length 3' do
      expect(game.towers).to eq([[],[],[]])
    end
  end

  describe '#valid_move?' do
    before(:each) { game.set_towers(3) }

    context 'when the move is valid' do 
      it 'should return true if the starting and ending position is valid' do
        expect(game.valid_move?([0,1])).to eq(true)
      end
    end
    context 'when the move is invalid' do
      it 'should return false if the starting tower is empty' do
        expect(game.valid_move?([2,1])).to eq(false)
      end
      it "should return false if the starting tower's last piece is larger than the ending tower's last piece" do
        game.towers[1].push(game.towers[0].pop) 
        expect(game.valid_move?([0,1])).to eq(false)
      end
    end
  end

  describe '#game_over' do
    it 'should return false if the second or third tower is not complete' do
      game.towers = [[5,4,3,2,1],[],[]]
      expect(game.game_over?).to eq(false)
    end

    it 'should return true if the second or third tower is complete' do
      game.towers = [[],[],[5,4,3,2,1]]
      game.num_towers = 5
      expect(game.game_over?).to eq(true)
    end
  end

end