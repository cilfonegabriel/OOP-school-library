require_relative '../modules/teacher'
require_relative '../modules/classroom'

describe Teacher do
    describe '#specialization' do
      it 'returns the specialization of the teacher' do
        teacher = Teacher.new(30, 'Math')
        expect(teacher.specialization).to eq('Math')
      end
    end
  
    describe '#can_use_services?' do
      it 'returns true' do
        teacher = Teacher.new(30, 'Math')
        expect(teacher.can_use_services?).to be(true)
      end
    end
  end