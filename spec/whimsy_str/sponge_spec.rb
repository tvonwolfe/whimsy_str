# frozen_string_literal: true

describe WhimsyStr::Sponge do
  let(:spec_seed) { 1234 }
  let(:spec_rand) { Random.new(spec_seed) }

  context 'when no arguments passed' do
    before do
      allow(Random).to receive(:new).and_return(spec_rand)
      allow(spec_rand).to receive(:rand).and_call_original
    end

    it 'gets a random value for each character in the string' do
      string = 'nobody wants to work anymore'
      string.spongify
      expect(spec_rand).to have_received(:rand).at_most(string.length).times
    end

    it 'capitalizes characters with defaut 50% chance' do
      string = 'nobody wants to work anymore'
      expect(string.spongify).to eq 'nObODy WANtS To WoRK AnyMOrE'
    end
  end

  context 'when `max` value passed' do
    it 'capitalizes characters with specified chance' do
      string = 'nobody wants to work anymore'
      expect(string.spongify(0.75)).to eq 'nobody WAnTs To wORK AnYmorE'
    end

    it 'returns the string unchanged if the specified chance is less than 0' do
      string = 'nobody wants to work anymore'
      expect(string.spongify(-1)).to eq string
    end

    it 'returns the string unchanged if the specified chance is equal to 0' do
      string = 'nobody wants to work anymore'
      expect(string.spongify(0)).to eq string
    end
  end

  context 'when block is passed' do
    it 'capitalizes characters according to when block evaluates to true' do
      # @param index [Integer]
      string = 'nobody wants to work anymore'.spongify { |_char, index| index.even? }
      expect(string).to eq 'NoBoDy wAnTs tO WoRk aNyMoRe'
    end
  end
end
