require './capitalize_decorator'
require './nameable'
describe CapitalizeDecorator do
  nameable = Nameable.new
  capitalize_decorator = CapitalizeDecorator.new nameable
  it 'Should create an instance of CapitalizeDecorator' do
    expect(capitalize_decorator).to be_instance_of(CapitalizeDecorator)
  end
  it 'Should create be kind  of Nameable' do
    expect(capitalize_decorator).to be_kind_of(BaseDecorator)
  end
  it 'Should respond to correct_name' do
    expect(capitalize_decorator).to respond_to(:correct_name)
  end
end
