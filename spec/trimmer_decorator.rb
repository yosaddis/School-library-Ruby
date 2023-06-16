require './trimmer_decorator'
require './nameable'
describe TrimmerDecorator do
  nameable = Nameable.new
  trimmer_decorator = TrimmerDecorator.new nameable
  it 'Should create an instance of trimmerDecorator' do
    expect(trimmer_decorator).to be_instance_of(TrimmerDecorator)
  end
  it 'Should create be kind  of Nameable' do
    expect(trimmer_decorator).to be_kind_of(BaseDecorator)
  end
  it 'Should respond to correct_name' do
    expect(trimmer_decorator).to respond_to(:correct_name)
  end
end
