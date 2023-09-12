require_relative '../classes/music/music_album'
require 'rspec'

describe MusicAlbum do
  let(:publish_date) { '2003/05/28' }

  subject { described_class.new(publish_date: publish_date, on_spotify: true) }

  describe '#can_be_archived?' do
    context 'when on_spotify is true' do
      it 'returns true for a music released more than 10 years ago' do
        expect(subject.can_be_archived?).to be(true)
      end

      it 'returns false for a music released less than 10 years ago' do
        new_publish_date = '2023/09/12'
        music_album = described_class.new(publish_date: new_publish_date, on_spotify: true)
        expect(music_album.can_be_archived?).to be(false)
      end
    end

    context 'when on_spotify is false' do
      subject { described_class.new(publish_date: publish_date, on_spotify: false) }
      it 'returns false regardless of release year' do
        expect(subject.can_be_archived?).to be(false)
      end
    end
  end
end