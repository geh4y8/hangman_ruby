require 'rspec'
require 'word'

describe 'Word' do
  it 'takes a word and replaces it with stars' do
    test_word = Word.new
    test_word = "apple"
    expect(test_word.hide_word).to eq "*****"
  end

  it 'takes a guessed letter and searches in the word for a match and replaces the hidden word with the matched letters' do
    test_word = Word.new
    test_word.word = "pear"
    expect(test_word.display_word('p')).to eq "p***"
  end

  it 'handles duplicate letter matches' do
    test_word = Word.new
    test_word.word = "apple"
    expect(test_word.display_word('p')).to eq "*pp**"
  end


end
