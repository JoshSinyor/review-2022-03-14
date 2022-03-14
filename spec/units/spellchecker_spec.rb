# frozen_string_literal: true

require 'spellchecker'

describe 'spellcheck' do
  it 'checks one correctly spelled word' do
    expect(spellcheck('These')).to eq 'These'
  end

  it 'checks one incorrectly spelled word' do
    expect(spellcheck('spnelt')).to eq '~spnelt~'
  end

  it 'checks a correctly spelled sentence' do
    expect(spellcheck('These words are spelt correctly')).to eq 'These words are spelt correctly'
  end
end
