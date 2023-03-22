require_relative '../modules/student'
require_relative '../modules/classroom'

describe Student do
  describe '#initialize' do
    context 'with default arguments' do
      let(:student) { described_class.new(15) }

      it 'creates a new student with age, id, name, and parent permission' do
        expect(student.age).to eq(15)
        expect(student.id).to_not be_nil
        expect(student.name).to eq('Unknown')
        expect(student.parent_permission).to be(true)
      end

      it 'initializes classroom to nil' do
        expect(student.classroom).to be_nil
      end
    end

    context 'with custom arguments' do
      let(:student) { described_class.new(16, 'John Doe', '123', parent_permission: false) }

      it 'creates a new student with custom age, id, name, and parent permission' do
        expect(student.age).to eq(16)
        expect(student.id).to eq('123')
        expect(student.name).to eq('John Doe')
        expect(student.parent_permission).to be(false)
      end

      it 'initializes classroom to nil' do
        expect(student.classroom).to be_nil
      end
    end
  end

  describe '#classroom=' do
    let(:student) { described_class.new(15) }
    let(:classroom) { instance_double('Classroom', students: []) }

    before { student.classroom = classroom }

    it 'assigns the classroom to the student' do
      expect(student.classroom).to eq(classroom)
    end

    it 'adds the student to the classroom' do
      expect(classroom.students).to include(student)
    end

    context 'when the student is already in the classroom' do
      before { student.classroom = classroom }

      it 'does not add the student to the classroom again' do
        expect(classroom.students.count(student)).to eq(1)
      end
    end
  end

  describe '#play_hooky' do
    let(:student) { described_class.new(15) }

    it 'returns a string with a shrugging person emoticon' do
      expect(student.play_hooky).to eq('¯\(ツ)/¯')
    end
  end
end
