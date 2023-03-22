require_relative './../modules/capitalize_decorator'
require_relative './../modules/person'

describe CapitalizeDecorator do
  let(:nameable) { double('nameable', correct_name: 'john doe') }
  subject { CapitalizeDecorator.new(nameable) }

  describe '#correct_name' do
    it 'capitalizes the correct name' do
      expect(subject.correct_name).to eq('John doe')
    end
  end
end
