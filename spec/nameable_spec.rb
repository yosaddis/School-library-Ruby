require './nameable'

describe Nameable do
  nameable = Nameable.new
  it 'Should raise an error' do
    expect { nameable.correct_name }.to raise_error(NotImplementedError)
  end
end
