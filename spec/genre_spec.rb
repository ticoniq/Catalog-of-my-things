require_relative '../classes/music/genre'
require_relative '../classes/item'

describe Genre do
  let(:name) { 'Rock' }
  subject { described_class.new(name: name) }
  describe '#add_item' do
    it 'adds an item to the genre and sets genre for the music album' do
      item = Item.new('2005/07/15')
      subject.add_item(item)
      expect(item.genre).to eq(subject)
      expect(subject.items).to include(item)
    end
  end
end
