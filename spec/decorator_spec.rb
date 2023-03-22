require_relative './../modules/decorator'
require_relative './../modules/nameable'

describe Decorator do
  describe '#initialize' do
    it 'sets the nameable instance variable' do
      nameable = double('nameable')
      decorator = Decorator.new(nameable)
      expect(decorator.instance_variable_get(:@nameable)).to eq(nameable)
    end
  end

  describe '#correct_name' do
    it 'calls correct_name on the nameable object' do
      nameable = double('nameable')
      decorator = Decorator.new(nameable)
      expect(nameable).to receive(:correct_name)
      decorator.correct_name
    end
  end
end
