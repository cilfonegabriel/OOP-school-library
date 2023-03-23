require_relative '../modules/person'
require_relative '../modules/book'
require_relative '../modules/rental'

describe Person do
  let(:person) { Person.new(20, '1234', 'John Doe') }
  let(:book) { Book.new('The Great Gatsby', 'F. Scott Fitzgerald') }

  describe '#of_age?' do
    it 'returns true if the person is 18 or over' do
      expect(person.send(:of_age?)).to eq true
    end

    it 'returns false if the person is under 18' do
      person.age = 16
      expect(person.send(:of_age?)).to eq false
    end
  end

  describe '#correct_name' do
    it 'returns the person\'s name' do
      expect(person.correct_name).to eq 'John Doe'
    end
  end

  describe '#add_rental' do
    it 'adds a rental to the book\'s rentals array' do
      expect do
        person.add_rental(book)
      end.to change(book.rentals, :size).by(1)
    end

    it 'creates a new Rental object with the person and book' do
      expect(Rental).to receive(:new).with(Date.today, person, book)
      person.add_rental(book)
    end
  end
end
