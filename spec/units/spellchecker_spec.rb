# frozen_string_literal: true

require 'spellchecker'

describe 'spellcheck' do
  it 'checks one word' do
    expect(spellcheck('These')).to eq "These"
  end
end
