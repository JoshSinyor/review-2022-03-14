# frozen_string_literal: true

require 'spellchecker'

describe 'spellcheck' do
  it 'checks one correctly spelled word' do
    expect(spellcheck('These')).to eq 'These'
  end

  it 'checks one incorrectly spelled word' do
    expect(spellcheck('spnelt')).to eq 'spelt'
  end
end
