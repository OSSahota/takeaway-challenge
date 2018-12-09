require 'order'

describe Order do

  let(:items) { [:fish, :fish, :chips] }

  subject { described_class.new }

  it 'selects several items from the menu' do
    subject.add_to_order(:fish, 2)
    subject.add_to_order(:chips, 1)
    expect(subject.items).to eq(items)
  end

end
