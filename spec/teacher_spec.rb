require './teacher'

describe Teacher do
    teacher = Teacher.new 24, 'Developer', 'Yosi'
    it 'Creates a new teacher a kind of person' do
        expect(teacher).to be_a_kind_of Person
    end

    it 'Creates a new teacher instance of teacher' do
        teacher = Teacher.new 24, 'Yosi', 'Developer'
        expect(teacher).to be_an_instance_of Teacher
    end

    it 'Should be able to use services' do
        expect(teacher.can_use_services?).to eq(true)
    end
end
