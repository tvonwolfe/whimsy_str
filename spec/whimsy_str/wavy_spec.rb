# frozen_string_literal: true

describe WhimsyStr::Wavy do
  context 'when no arguments are passed' do
    it 'inserts a single space between characters' do
      expect('wavify this string for me'.wavify).to eq('w a v i f y   t h i s   s t r i n g   f o r   m e')
    end
  end

  context 'when an argument is specified' do
    it 'inserts the correct number of spaces' do
      expect('extreme wave'.wavify(3))
        .to eq 'e   x   t   r   e   m   e       w   a   v   e'
    end

    it 'converts floating-point arguments to Integer type' do
      expect('splitspace'.wavify(2.5))
        .to eq 's  p  l  i  t  s  p  a  c  e'
    end

    it 'returns the string unchanged if the number of spaces is 0' do
      string = 'this is a string that will not be modified'
      expect(string.wavify(0)).to eq string
    end
  end
end
