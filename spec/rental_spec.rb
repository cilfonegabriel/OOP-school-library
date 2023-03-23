require_relative '../modules/rental'
require_relative '../modules/person'
require_relative '../modules/book'

describe Rental do
  let(:book) { Book.new('The Great Gatsby', 'F. Scott Fitzgerald') }
  let(:person) { Person.new(25, '1234', 'Alice') }
  let(:rental) { Rental.new(Date.today, person, book) }

  describe '#initialize' do
    it 'creates a new Rental object' do
      expect(rental).to be_an_instance_of(Rental)
    end

    it 'sets the date, person, and book instance variables' do
      expect(rental.date).to eq(Date.today)
      expect(rental.person).to eq(person)
      expect(rental.book).to eq(book)
    end

    it 'adds the rental to the person and book rentals arrays' do
      expect(person.rentals).to include(rental)
      expect(book.rentals).to include(rental)
    end
  end

  describe '#to_json' do
    it 'returns a JSON string representation of the Rental object' do
      expected_json = {
        JSON.create_id => 'Rental',
        'date' => Date.today,
        'person' => person,
        'book' => book
      }.to_json

      expect(rental.to_json).to eq(expected_json)
    end
  end
end
