require('rspec')
require('word_replace')

describe '#word_replace' do

  it 'replaces "world" with universe' do
    expect("Hello world".word_replace("world", "universe")).to eq "Hello universe"
  end

  it 'replaces partial matches' do
    phrase = "I am walking my cat to the cathedral"
    expect(phrase.word_replace("cat", "dog")).to eq "I am walking my dog to the doghedral"
  end

  it 'returns string if there are no matches' do
    expect("Hello world".word_replace("snow", "universe")).to eq "Hello world"
  end

  it 'returns string if there are no matches' do
    expect("Hello world".word_replace("hello", "hi")).to eq "hi world"
  end
end
