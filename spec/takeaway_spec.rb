require 'takeaway'
require 'order'

describe Takeaway do

  let(:menu) { double :menu }
  let(:order) { double :order }

  subject { described_class.new(order) }

  let(:items) { [:fish, :fish, :chips] }

  describe '#show_menu' do
    before do
      allow(subject).to receive(:menu) { menu }
    end

    it 'shows the menu' do
      expect(subject.menu).to eq menu
    end
  end

  # describe '#verify_order' do
  #   before do
  #     allow(subject).to receive(:items) {[]}
  #   end
  #
  #   it 'raises an error if no items have been ordered' do
  #     expect{ subject.verify_order }.to raise_error "No items have been ordered from the menu"
  #   end
  # end

end
