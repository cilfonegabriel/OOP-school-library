require_relative '../modules/person'

RSpec.describe Person do
  let(:person) { Person.new(18, '1234-5678', 'John Smith', parent_permission: true) }
  let(:book) { double('Book') }

  describe '#can_use_services?' do
    context 'when the person is of age' do
      it 'returns true' do
        expect(person.can_use_services?).to be true
      end
    end
  end

  describe '#to_json' do
    it 'returns a JSON representation of the person' do
      expect(person.to_json).to eq({
        JSON.create_id => 'Person',
        'id' => '1234-5678',
        'name' => 'John Smith',
        'age' => 18,
        'parent_permission' => true
      }.to_json)
    end
  end
end
