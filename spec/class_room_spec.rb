require './class_room'
require './student'

describe Classroom do
  classroom = Classroom.new 'B-203'
  student = Student.new 24, 'Yosi', 1

  it 'Creates a new classroom' do
    expect(classroom).to be_an_instance_of Classroom
  end

  it 'Should have the correct label' do
    expect(classroom.label).to eq('B-203')
  end

  it 'Should be able to add a student' do
    classroom.add_student(student)
    expect(classroom.students).to include(student)
  end
end
