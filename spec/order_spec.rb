require 'order'

describe Order do

  let(:items) { [:fish, :fish, :chips] }

  subject { described_class.new }

  describe '#add_to_order' do
    it 'selects several items from the menu' do
      subject.add_to_order(:fish, 2)
      subject.add_to_order(:chips, 1)
      expect(subject.items).to eq(items)
    end
  end

  describe '#calculate_total' do
    it 'returns a zero total if no items have been ordered' do
      expect(subject.calculate_total).to eq 0
    end

    it 'calculates the total amount for the order' do
      subject.add_to_order(:roe, 2)
      subject.add_to_order(:chips, 1)
      expect(subject.calculate_total).to eq 5
    end
  end


end
