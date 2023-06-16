require './base_decorator'

describe BaseDecorator do
  it 'Should create an instance of BaseDecorator' do
    nameable = double('nameable')
    base_decorator = BaseDecorator.new nameable
    expect(base_decorator).to be_instance_of(BaseDecorator)
  end
  it 'Should create be kind  of Nameable' do
    nameable = double('nameable')
    base_decorator = BaseDecorator.new nameable
    expect(base_decorator).to be_kind_of(Nameable)
  end
end
