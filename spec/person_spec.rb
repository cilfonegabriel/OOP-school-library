require_relative '../modules/person'

describe Person do
  let(:person) { Person.new(20) }
  let(:book) { double('book') }

  describe '#initialize' do
    it 'sets the age attribute' do
      expect(person.age).to eq(20)
    end

    it 'sets the id attribute with a unique identifier' do
      expect(person.id).not_to be_nil
    end

    it 'sets the name attribute with a default value' do
      expect(person.name).to eq('Unknown')
    end

    it 'sets the parent_permission attribute with a default value' do
      expect(person.parent_permission).to be true
    end

    it 'initializes the rentals attribute as an empty array' do
      expect(person.rentals).to be_empty
    end
  end

  describe '#to_json' do
    it 'returns a JSON string representation of the Person object' do
      json = {
        JSON.create_id => 'Person',
        'id' => person.id,
        'name' => 'Unknown',
        'age' => 20,
        'parent_permission' => true
      }.to_json
      expect(person.to_json).to eq(json)
    end
  end

  describe '#can_use_services?' do
    context 'when the person is 18 years or older' do
      it 'returns true' do
        expect(person.can_use_services?).to be true
      end
    end

    context 'when the person is under 18 years old and has parental permission' do
      let(:person) { Person.new(16, parent_permission: true) }

      it 'returns true' do
        expect(person.can_use_services?).to be true
      end
    end

    context 'when the person is under 18 years old and does not have parental permission' do
      let(:person) { Person.new(16, parent_permission: false) }

      it 'returns false' do
        expect(person.can_use_services?).to be false
      end
    end
  end

  describe '#correct_name' do
    it 'returns the name attribute' do
      expect(person.correct_name).to eq('Unknown')
    end
  end
end
