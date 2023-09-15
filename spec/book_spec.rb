require_relative '../classes/book/book'

RSpec.describe Book do
  let(:book_publisher) { 'Okolie Tochi' }
  let(:book_cover_state) { 'bad' }
  let(:book_publish_date) { '2021-01-07' }
  let(:book) { Book.new(book_cover_state, book_publisher, book_publish_date) }

  # Test the initialization of the Book class
  describe '#initialize' do
    it 'creates books with the correct cover & publisher' do
      expect(book.cover_state).to eq(book_cover_state)
      expect(book.publisher).to eq(book_publisher)
      expect(book.publish_date).to eq(book_publish_date)
    end
  end

  describe '#can_be_archived' do
    context 'when cover state is bad' do
      it 'returns true' do
        expect(book.can_be_archived).to be true
      end
    end

    context 'when cover is good' do
      let(:book_cover_state) { 'good' }
      it 'returns true if published more than 10 years ago' do
        expect(book.can_be_archived?).to be false
      end
    end
  end
end
