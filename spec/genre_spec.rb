require_relative '../classes/music/genre'
require_relative '../classes/item'

describe Genre do
  let(:name) { 'Blues' }
  subject { described_class.new(name: name) }
  describe '#add_item' do
    it 'adds an item to the genre and sets genre for the music album' do
      item = Item.new('2015/12/15')
      subject.add_item(item)
      expect(item.genre).to eq(subject)
      expect(subject.items).to include(item)
    end
  end
end
