require './student'

describe Student do
  student = Student.new 24, 'Yosi', 1
  it 'Creates a new student a kind of person' do
    expect(student).to be_a_kind_of Person
  end

  it 'Creates a new student instance of student' do
    student = Student.new 24, 'Yosi', 1
    expect(student).to be_an_instance_of Student
  end

  it 'Should play hocky' do
    expect(student.play_hooky).to eq('¯\(ツ)/¯')
  end
end
