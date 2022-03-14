# frozen_string_literal: true

require 'spellchecker'

describe 'spellcheck' do
  it 'checks one correctly spelled word' do
    expect(spellcheck('These')).to eq 'These'
  end

  it 'checks one incorrectly spelled word' do
    expect(spellcheck('spnelt')).to eq '~spnelt~'
  end

  it 'checks an incorrectly spelled sentence' do
    expect(spellcheck('These words are spnelt correclty')).to eq 'These words are ~spnelt~ ~correclty~'
  end

  it 'raises an error when input is not a String' do
    expect { spellcheck(0) }.to raise_error("Incorrect data type. Must be a String.")
  end
end
